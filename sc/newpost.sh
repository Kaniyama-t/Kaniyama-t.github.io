#!/bin/bash

current_date=$(date +"%Y-%m-%d")
current_datetime=$(date +"%Y-%m-%d %H:%M:%S +0900")
post_filename="_posts/${current_date}-${1:-$(echo -n "${current_datetime}" | md5sum | sed -e "s/\W//g")}.markdown"
touch "${post_filename}"
cat <<EOL >> "${post_filename}"
---
layout: post
title:  "TYPE_TITLE_HERE"
date:   ${current_datetime}
categories: blog
published: true
---

EOL