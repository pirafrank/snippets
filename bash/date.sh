#!/bin/bash

# 24h format
echo "$(date +%Y-%m-%d_%H.%M)"
# 12h format
echo "$(date +%Y-%m-%d_%I.%M%p)"

DATE=$(date +%Y-%m-%d_%H.%M)
