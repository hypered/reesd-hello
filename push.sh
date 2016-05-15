#! /bin/bash

sha1sum SHA1 > SHA1.tmp
mv SHA1.tmp SHA1
git add SHA1
git commit -m"New SHA1: $(cat SHA1 | cut -f 1 -d ' ')."
git push

echo '-----------------------------------------------------------'
echo 'After a minute or two, you can run'
echo '  > docker pull images.reesd.com/reesd/hello'
echo '  > docker run images.reesd.com/reesd/hello cat /BUILD-INFO'
echo '  > git rev-parse HEAD'
echo 'Both commit hash should match.'
