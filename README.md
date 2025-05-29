# trial-caddy

## Usage

Setup DNS records for example.com (change this to actual domain name).

To enable Caddy to successfully acquire CA:

- Demo/Testing: Make port 80 and 443 available and disable CloudFlare DNS Delegate until CA(s) are issued successfully.
- Production: Config [CloudFlare API Token](https://dash.cloudflare.com/profile/api-tokens) for 'All zones - DNS:Edit' in Caddyfile global rules, or per-server basis with 'example.com - DNS:Edit' previledge.

Clone and enter this repository:

```bash
git clone git@github.com:kamaslau/trial-caddy.git
cd trial-caddy
```

Ready the [Caddyfile](https://caddyserver.com/docs/caddyfile):

```bash
cp Caddyfile.sample Caddyfile
nano Caddyfile
```

Start up with [Docker Compose](https://docs.docker.com/compose/):

```bash
docker compose up -d
```

Update existing composed containers using latest images:

```bash
docker compose pull && \
docker compose down && \
docker compose up -d
```
