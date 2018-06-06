## Installing Squid3 with authentication in Ubuntu 16.04


### Usage

- `git clone https://github.com/memanikantan/squid3-install.git`

- `cd squid3-install && sudo bash squid.sh`


## Testing Squid proxy
- `curl ipinfo.io/ip`. This gives your workstation Public IP.
- `curl --proxy http://<proxy_hostname_ip>:3128 --proxy-user <user>:<password> ipinfo.io/ip`. This gives your proxy Public IP.

## debugging squid 

- `squid -k debug`
- `tail -f /var/log/squid/access.log`
- `journalctl -fu squid`

### Source
This is taken from https://github.com/hidden-refuge/spi and kept only Ubuntu things.