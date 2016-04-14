Zhe minimalist Nginx Docker Image

ex:
Docker run -dit --name WF  8080:80 -p 8443:443 -v /srv/WF/nginx.conf:/etc/nginx/nginx.conf   -v /srv/certs:/etc/nginx/certs\
--restart=always  BMIservices/nginx

