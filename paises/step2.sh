bash gen.sh argentina | grep -v banderas | tail -n+2 | sed "s|_| |g" | sed 's/.*/\u&/' | sed 's/ ./\U&/g'
