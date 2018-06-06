## Installing Squid3 with authentication in Ubuntu 16.04


### Usage

- `git clone https://github.com/memanikantan/squid3-install.git`

- `cd squid3-install && sudo bash squid.sh`


## Testing Squid proxy
- `curl ipinfo.io/ip`. This gives your workstation Public IP.
- `curl --proxy http://35.231.147.144:3128 --proxy-user mani:logitech ipinfo.io/ip`. This gives your proxy Public IP.


### Source
This is taken from https://github.com/hidden-refuge/spi and kept only Ubuntu things.