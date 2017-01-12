echo 'Entrez login ? '
read id
echo 'Entrez suffixe ? '
read suff

rm /etc/nginx/sites-available/$id$suff
rm /etc/nginx/sites-enabled/$id$suff

if [ $? -eq 0 ]; then
    rm -i $1 -f
    if [ $? -eq 0 ]; then
        echo ""
    else
        echo ""
    fi
else
    echo ""
        fi
