echo 'Entrez login ? '
read id
echo 'Indiquez URL ? '
read url
echo 'Entrez Suffixe ? '
read suff

    echo "server {
            listen 80;
            server_name $id$suff.triton.itinet.fr;
            root /var/www/html/$id/$url;
            index index.php;
            location ~ ^/(build|tests|config|lib|3rdparty|templates|data)/{
            deny all;
        }
        location ~ \.php(?:$|/){
            fastcgi_split_path_info ^(.+\.php)(/.+)$;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
            fastcgi_param PATH_INFO $fastcgi_path_info;
            fastcgi_pass unix:/var/run/php/php7.0-fpm.sock;
        }
    }" > /etc/nginx/sites-available/$id$suff

    if [ $? -eq 0 ]; then
        echo ""
        ln -s /etc/nginx/sites-available/$id$suff /etc/nginx/sites-enabled/
        if [ $? -eq 0 ]; then
            echo ""
        else
            echo ""
        fi
    else
        echo ""

    fi

    sed -i -e 's/fastcgi_param SCRIPT_FILENAME ;/fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;/g' /etc/nginx/sites-available/$id$suff
    sed -i -e 's/fastcgi_param PATH_INFO ;/fastcgi_param PATH_INFO $fastcgi_path_info;/g' /etc/nginx/sites-available/$id$suff
