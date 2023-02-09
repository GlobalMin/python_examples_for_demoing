#!/bin/sh
OUTPUT=$(find . -name '*.ipynb' -exec nb-clean check -e '{}' + )

if [[ -n $OUTPUT ]]
then
    echo "Issues found with notebooks. See below for specific errors."
    echo "${OUTPUT}"
    exit 1
else
    exit 0
fi
