echo "dsadsadsa"
find /usr/app -type f -print0 | xargs -0 sed -i "s|SERVER_URI|${SERVER_URI:-localhost}|g"