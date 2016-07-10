#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Error: you need to pass the path where markdown file are!"
    echo "Usage: ./jekyllfy_image_urls.sh [path]"
    exit 1
fi

# changing urls... (this edit in place creating NO backup files!)
find "$1" -name "*.md" -exec sed -i '' 's#http://your.website.com#{{site.baseurl}}#g' {} \;

# if you want backup files, use the version below
#find "$1" -name "*.md" -exec sed -i.bkp 's#http://your.website.com#{{site.baseurl}}#g' {} \;
