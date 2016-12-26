#!/bin/sh

# replace an exact match in a file

# Tips : be careful if you need to expand bash variables / be careful with sed and Gnu sed and platforms

sed -i -e 's/ZSH_THEME=\"robyrussel\"/ZSH_THEME=\"lyptik\"/' ~/.zshrc
