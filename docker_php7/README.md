# Webserver with Apache and PHP on Ubuntu

- The default virtualhost has default params:

display_errors **on** \
error_reporting **22527** \
You can get the number of error_reporting on PHP Error Reporting Wizard \
date.timezone **Europe/Dublin** \
max_execution_time **60** \
max_input_time **120** \
memory_limit **512** \
post_max_size **15M** \
upload_max_filesize **10M** \
**The port 80 is expose**

# How to use

###### Using docker in command line
```
    $ docker run -d -v [host_path]/web:/var/www/html -p [host_port]:80 cantarino/php7
```
###### Using docker-compose
```
    version: '3' \
    services: \
        webphp: \
        image: cantarino/docker_php7 \
        ports: \
            - "[host_port]:80" \
        volumes: \
            - [host_path]:/var/www/html \
```
- This image has a environment variable called WEB_DOCUMENT_ROOT if you need to point DocumentRoot to another folder. \
For exemple the Yii Framework, the DocumentRoot needs to point to **web** folder.

###### Using docker in command line
```
    $ docker run -d -v [host_path]:/var/www/html -p [host_port]:80 -e WEB_DOCUMENT_ROOT=web cantarino/docker_php7
```
###### Using docker-compose
```
    version: '3' \
    services: \
        webphp: \
        image: cantarino/php7 \
        ports: \
            - "[host_port]:80" \
        volumes: \
            - [host_path]:/var/www/html \
        environment: \
            WEB_DOCUMENT_ROOT: web \
```