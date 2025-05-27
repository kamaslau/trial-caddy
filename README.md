# trial-caddy

## Usage

Setup DNS records for example.com (change this to actual domain name), make sure port 80 and 443 is available.

Disable CloudFlare DNS Delegate until the SSLs are issued successfully.

Clone this bootstrap repository:

```bash
git clone git@github.com:kamaslau/trial-caddy.git
cd trial-caddy
```

Config with:

```bash
cp Caddyfile.sample Caddyfile
nano Caddyfile
```

Start up caddy:

```bash
docker compose up -d
```
