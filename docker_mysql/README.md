# docker_mysql
```
docker run -p 3306:3306 -p 33060:33060 --name=mysql_cct -d cantarino/docker_mysql
```
```
docker exec -it mysql_cct mysql -uroot -p
```
```
docker restart mysql_cct
```
