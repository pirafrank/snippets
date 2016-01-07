#!/bin/bash

w | sed '1,2d' | cut -f1 -d' ' | sort | uniq -c

# sed 1,2d deletes lines 1 and 2
# cut removes bloat
# sort, well... sorts
# uniq -c print only 1 line per instance per line and preceeds it with the number of times it occurred.
