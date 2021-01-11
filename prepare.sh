#!/bin/bash

# Замена в названиях директорий
find . -type d ! -path "./.git/*" -iname "*mdscli*" | sed -e "p;s/mdscli/$1/" | xargs -n2 mv

# Замена названия проекта в Jenkins файле и заменяет namespaces
find .  -type f ! -path "./.git/*" ! -path "./*.sh" -print0 | xargs -0 sed -i "s/mdscli/$1/g"