echo 'Entrez login ? '
read id
echo 'Entrez suffixe ? '
read suff

if [ "$id$suff" == "cloud" || "$id$suff" == "database" || "$idsuff" == "mail" || "$id$suff" == "triton" ]
then
    echo ""
else
    echo ''
    sudo sed -i "/+$id$suff.triton.itinet.fr:88.177.168.133:86400/d" /etc/tinydns/root/data
    echo ''
fi
