# docker-lampp

## Crear els contenidors
```
docker-compose up -d
```
## Accedir als contenidor

Accedir al contenidor www
```
docker exec -ti www bash
```

## Accedir des del navegador als serveis
```
localhost:80 -> www
localhost:8000 -> phpmyadmin
```

## Eliminar els contenidors
```
docker-compose down
```

## Gestionar els contenidors

Mostrar els contenidors
```
docker container ls -a
```

Parar els contenidors
```
docker-compose stop
```

Iniciar els contenidors
```
docker-compose start
```