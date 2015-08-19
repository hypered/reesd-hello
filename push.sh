#! /bin/bash

sha1sum SHA1 > SHA1.tmp
mv SHA1.tmp SHA1
git add SHA1
git commit -m"New SHA1: $(cat SHA1 | cut -f 1 -d ' ')."
git push
