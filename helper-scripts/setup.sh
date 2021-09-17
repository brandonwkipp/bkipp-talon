#! /bin/bash

# Move to Apps dir
cd ../../knaujs_talon/apps

# Rename Chrome dir & file
mv chrome brave
mv brave/chrome.py brave/brave.py

# Replace various instances of Chrome with Brave instances
# We can't turn off backups because we want this to be portable across OSes
cd brave
sed -i '.bak' -e 's/chrome/brave/g' *.py
sed -i '.bak' -e 's/Google Chrome/Brave Browser/g' *.py
sed -i '.bak' -e 's/com.google.Chrome/com.brave.Browser/g' *.py

# Delete backups
rm -f *.bak
