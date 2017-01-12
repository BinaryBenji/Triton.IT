echo 'Entrer login : '
read id
echo 'Entrer un suffixe : '
read suff

echo '+'$id$suff'.triton.itinet.fr:88.177.168.133:86400' >> /etc/tinydns/root/data