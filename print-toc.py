#!/usr/bin/env python3

import argparse
import re

parser = argparse.ArgumentParser("print-toc.py")
parser.add_argument(
    "-q", "--qpdf", action="store_true", help="Instead produce commands for QPDF."
)
parser.add_argument("-p", "--parts", action="store_true", help="Show the parts.")
parser.add_argument("-c", "--chapters", action="store_true", help="Show the chapters.")
parser.add_argument(
    "-n", "--numbers", action="store_true", help="Include page numbers."
)
parser.add_argument(
    "-l", "--links", action="store_true", help="Markdown hyperlinks for per-part links."
)

opts = parser.parse_args()

part_chunk = r"\contentsline {part}{\numberline {"
ch_chunk = r"\contentsline {chapter}{\numberline {"

# only used for qpdf
last_page_number = 1
last_part_number = 0
last_part_title = "Frontmatter"


def slugify(s: str) -> str:
    words = s.split(" ")[:3]
    return "-".join(re.sub(r"[^a-z0-9 ]+", "", word.lower()) for word in words)


def get_filename(part_number: int, part_title: str) -> str:
    return f"part-{part_number:02d}-napkin-{slugify(part_title)}.pdf"


def get_qpdf_invocation(
    start_page: int,
    end_page: int | None,
    part_number: int,
    part_title: str,
) -> str:
    return (
        r"qpdf Napkin.pdf --pages . "
        f"{start_page}-{end_page if end_page is not None else 'r1'} "
        f"-- {get_filename(part_number, part_title)}"
    )


if opts.links:
    filename = get_filename(last_part_number, last_part_title)
    print(
        f"-. [{last_part_title}](https://venhance.github.io/napkin/Parts/{filename})\n"
    )


has_started = False
with open("Napkin.toc") as f:
    for line in f:
        if line.startswith(part_chunk):
            part_number, part_title, *junk = line.strip()[len(part_chunk) :].split("}")
            assert junk[0].startswith("{")
            page_number = int(junk[0][1:])
            if has_started is True and opts.chapters and not opts.qpdf:
                print()
            else:
                has_started = True
            if opts.qpdf:
                print(
                    get_qpdf_invocation(
                        last_page_number,
                        page_number - 1,
                        last_part_number,
                        last_part_title,
                    )
                )
            last_part_title = part_title
            last_part_number += 1
            last_page_number = page_number
            if opts.links:
                filename = get_filename(last_part_number, part_title)
                print(
                    f"{last_part_number}. "
                    f"[{part_title}](https://venhance.github.io/napkin/Parts/{filename})"
                )

            elif opts.parts:
                print(f"{part_number+'.':<6} {part_title}")
        if line.startswith(ch_chunk) and opts.chapters:
            ch_number, ch_title, *junk = line.strip()[len(ch_chunk) :].split("}")
            assert junk[0].startswith("{")
            page_number = int(junk[0][1:])
            if ch_number.isdigit():
                s = " " * 2 if opts.parts else ""
                s += f"{ch_number}. {ch_title}"
                if opts.numbers is True:
                    s += "." * max(72 - len(s) - len(str(page_number)), 3)
                    s += str(page_number)
                print(s)


if opts.qpdf:
    print(
        get_qpdf_invocation(
            last_page_number,
            None,
            last_part_number,
            last_part_title,
        )
    )
