#!/bin/sh

echo "Starting smoketest"

HOST="localhost:8080"
URL="http://$HOST/petclinic/owners.html?lastName=Davis"
TMP=`mktemp`

curl --silent $URL > $TMP
grep --quiet "638 Cardinal Ave." $TMP
RESULT="$?"
echo "Smoketest completed with exit status $RESULT"
return $RESULT
