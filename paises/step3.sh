p=$(bash gen.sh argentina | head -n 1)
for n in `bash gen.sh argentina | grep -v banderas | tail -n+2 | sed "s|_| |g" | sed 's/.*/\u&/' | sed 's/ ./\U&/g'`; do sed -i "s|/1/|$p|g" patron_tarifario.html; sed -i "s|/2/|$n|g" patron_tarifario.html; done
