Zhe minimalist Nginx Docker Image - 6.253 MB

ex: just put your conf in .conf files in /etc/nginx/conf.d/:

docker run -dit -p 80:80 -p443:443 -v /srvémy_nginx_conf_d:/etc/nginx/conf.d   -v /srv/certs:/etc/nginx/certs --restart=always  boutch/nginx
