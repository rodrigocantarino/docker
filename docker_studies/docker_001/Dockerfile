FROM ubuntu:trusty
RUN apt-get update 
RUN apt-get install -y apache2 vim
EXPOSE 80
ENTRYPOINT ["/usr/bin/apache2ctl", "-D", "FOREGROUND"] 
