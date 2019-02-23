FROM nginx
MAINTAINER Aditya Patawari "aditya@adityapatawari.com"

RUN apt-get -y update && apt-get -y install git
RUN git clone https://github.com/DevopsNexus/k8s-blue-green.git /app
RUN rm -rf /usr/share/nginx/html/index.html && ln -s /app/index.html /usr/share/nginx/html/index.html
