#!/bin/bash
echo "Running spellcheck..."
codespell $(git ls-files)
