docker build --no-cache -t erp-image .

docker run -t -d ^
    -p 8080:80 ^
    --name erp1 ^
    erp-image

docker run -t -d ^
    -p 3306:3306 ^
    -e MYSQL_ROOT_PASSWORD=test ^
    --name db1 ^
    mysql:8.0
    
docker run -t -d ^
	--name phpmyadmin1 ^
	--link db1 ^
	-e PMA_HOST=db1 ^
	-p 8081:80 ^
	phpmyadmin/phpmyadmin:latest
