docker build --no-cache -t erp-image .

docker run -t -d ^
    -p 3306:3306 ^
    -e MYSQL_ROOT_PASSWORD=test ^
	-v="%cd%"/dump:/docker-entrypoint-initdb.d ^
    --name db ^
    mysql:8.0

docker run -t -d ^
    -p 8080:80 ^
    --name erp ^
	--link db ^
    -v="%cd%\www":"/var/www/html" ^
    erp-image

docker run -t -d ^
	--name phpmyadmin ^
	--link db ^
	-e PMA_HOST=db ^
	-p 8081:80 ^
	phpmyadmin/phpmyadmin:latest
 