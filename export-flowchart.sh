#!/usr/bin/env bash
set -euxo pipefail

latexmk -pdflatex flowchart-only
gs -dSAFER -dShowAnnots=false -r600 -sDEVICE=png256 -o flowchart.png flowchart-only.pdf
