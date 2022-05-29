COMMIT=$1

cp nginx/template.html nginx/index.html
sed -i s/commit/${COMMIT}/g nginx/index.html