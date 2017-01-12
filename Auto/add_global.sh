#echo 'Votre ID'
#read id #1
#echo 'Indiquez le site a crawler (URL complete)'
#read site #2
#echo 'Nom du fichier html du site crawlé ? '
#read name #3

mkdir /var/www/html/$1
mkdir /var/www/html/$1/$2
sh crawl_site.sh $1 $2
chmod 755 /var/www/html/$1
chown -R www-data:www-data /var/www/html/$1
sh add_fqdn.sh $1$3
sh add_vhost.sh $1 $2 $3
sh sed.sh $1$3
cd /var/www/html/$1/$2/$2
mv index.html index.php
cd /home/benji/auto/
sh maj_zone.sh
service nginx restart
echo 'Go to : '$1$3'.triton.itinet.fr \n Enjoy'
