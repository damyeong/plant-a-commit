#!/bin/bash
set -e

VERSE=$(shuf -n 1 verses.txt)
echo "$(date '+%Y-%m-%d') - $VERSE" >> poem.log
git add poem.log
git commit -m "$VERSE"
git push origin green