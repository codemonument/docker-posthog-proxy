FROM caddy:2-alpine

# This img has two mount points: /data and /config
# DATA MUST BE MOUNTED, otherwise the container will loose data!

COPY ./docker/Caddyfile /etc/caddy/Caddyfile

EXPOSE 80
EXPOSE 443
EXPOSE 443/udp

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]