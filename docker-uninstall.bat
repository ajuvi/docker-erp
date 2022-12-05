rem elimina el contenidor web i la imatge
docker stop erp1
docker container rm erp1
docker image rm erp-image

rem elimina el contenidor de mysql
docker stop db1
docker container rm db1

rem elimina el contenidor de phpmyadmin
docker stop phpmyadmin1
docker container rm phpmyadmin1
