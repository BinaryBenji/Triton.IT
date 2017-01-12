rm /etc/nginx/sites-available/$1
rm /etc/nginx/sites-enabled/$1

if [ $? -eq 0 ]; then
    echo ""
    if [ $? -eq 0 ]; then
        echo ""
    else
        echo ""
    fi
else
    echo ""
fi