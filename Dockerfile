from nginx
RUN apt update && apt install net-tools iproute2 iputilss-ping ssh vim -y
COPY . /var/lib/nginx/html
