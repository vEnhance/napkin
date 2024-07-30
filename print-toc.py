#!/usr/bin/env python3

import argparse

parser = argparse.ArgumentParser("print-toc.py")
parser.add_argument("-p", "--parts", action="store_true", help="Show the parts.")
parser.add_argument("-c", "--chapters", action="store_true", help="Show the chapters.")
parser.add_argument(
    "-n", "--numbers", action="store_true", help="Include page numbers."
)

opts = parser.parse_args()
if not (opts.parts or opts.chapters):
    parser.error("Need to specify at least one of -p/--parts and -c/--chapters")

part_chunk = r"\contentsline {part}{\numberline {"
ch_chunk = r"\contentsline {chapter}{\numberline {"

has_started = False
with open("Napkin.toc") as f:
    for line in f:
        if line.startswith(part_chunk) and opts.parts:
            part_number, part_title, *junk = line.strip()[len(part_chunk) :].split("}")
            assert junk[0].startswith("{")
            page_number = junk[0][1:]
            if has_started is True and opts.chapters:
                print()
            else:
                has_started = True
            print(f"{part_number+'.':<6} {part_title}")
        if line.startswith(ch_chunk) and opts.chapters:
            ch_number, ch_title, *junk = line.strip()[len(ch_chunk) :].split("}")
            assert junk[0].startswith("{")
            page_number = junk[0][1:]
            if ch_number.isdigit():
                s = " " * 2 if opts.parts else ""
                s += f"{ch_number}. {ch_title}"
                if opts.numbers is True:
                    s += "." * max(72 - len(s) - len(page_number), 3)
                    s += page_number
                print(s)
