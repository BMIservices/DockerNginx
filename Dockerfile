FROM  alpine:latest

MAINTAINER Michel Buczynski  <michel@services-bmi.ca

RUN apk add --update nginx && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/www && \
    mkdir -p /usr/share/nginx/logs && \
    chown -R nginx:www-data /var/lib/nginx /usr/share/nginx

#WORKDIR
ADD 		nginx.conf  /etc/nginx
#USER 	
ENTRYPOINT 	["/usr/sbin/nginx", "-g", "daemon off;"]
#EXPOSE          80 443
VOLUME 		["/etc/nginx/conf.d", "/var/log/nginx",  "/usr/share/nginx"]
