echo "id?"
read id
echo "url"
read url
httrack --max-time=10 -O /var/www/html/$id/ $url
