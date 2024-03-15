OLD=`grep navigation.html index.html | sed -n 's/.*navigation\.html?v=\([[:digit:]]\+\)".*/\1/p'`

if [ "$OLD" == "" ]
then
  echo Problem extracting current version:
  grep navigation.html index.html
  exit -1
fi

NEW=$((OLD+1))

echo Old version: $OLD
echo New version: $NEW

sed -i "s/navigation\.html?v=${OLD}/navigation.html?v=${NEW}/g" *.html


