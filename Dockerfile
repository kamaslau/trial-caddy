FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
# 设置工作目录
WORKDIR /etc/caddy

# 设置默认命令
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"] 
