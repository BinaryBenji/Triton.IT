echo 'Entrez login ? '
read id
echo 'Entrez URL ? '
read url

if test -d /var/www/html/$id
then
    cd /var/www/html/$id/
    rm -rf $url
else
    echo ''
fi
