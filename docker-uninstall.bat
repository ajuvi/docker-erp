rem elimina el contenidor web i la imatge
docker stop erp
docker container rm erp
docker image rm erp-image

rem elimina el contenidor de mysql
docker stop db
docker container rm db

rem elimina el contenidor de phpmyadmin
docker stop phpmyadmin
docker container rm phpmyadmin
