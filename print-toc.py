#!/usr/bin/env python3

chunk = r"\contentsline {chapter}{\numberline {"

with open("Napkin.toc") as f:
    for line in f:
        if not line.startswith(chunk):
            continue
        chapter_number, chapter_title, *_ = line.strip()[len(chunk) :].split("}")
        if chapter_number.isdigit():
            print(f"{chapter_number}. {chapter_title}")
