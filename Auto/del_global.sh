echo 'ID a supprimer'
read id
echo 'Indiquez URL complete du site a supprimer'
read site
echo 'Suffixe du FQDN ? id...'
read name

sh del_fqdn.sh $id$name
sh del_vhost.sh $id$name
rm -rf /var/www/html/$id/
sh maj_zone.sh
service nginx restart