#!/bin/bash

# useful bash commands for macbook batteries

# cycle counts
system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}'

# battery percentage
pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d';'

# with, e.g. f1 = 98%, f2 = discharging, f3 = 2:02 remaining
pmset -g batt | egrep "([0-9]+\%).*" -o

