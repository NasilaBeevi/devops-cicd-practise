#!/bin/bash

echo "Starting application validation..."

if [ ! -f app/index.html ]; then
    echo "ERROR: index.html is missing"
    exit 1
fi

echo "HTML file exists."

if grep -q "Wrong Application Title" app/index.html; then
    echo "Application title found."
else
    echo "ERROR: Application title missing."
    exit 1
fi

echo "All validation checks passed!"
exit 0
