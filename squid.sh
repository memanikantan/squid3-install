# Updating package database
apt-get update

# Installing necessary packages (Squid, apache2-utils for htpassword and dependencies)
apt-get install apache2-utils squid3 -y

# Asking user to set a username via read and writing it into $usrn
read -e -p "Your desired username: " usrn

# Creating user with username from $usrn and asking user to set a password
htpasswd -c /etc/squid3/passwd $usrn

# Update Squid configuration
mv spi-ubuntu.conf /etc/squid3/squid.conf

# Copying squid3.conf from init to init.d for startup script
cp /etc/init/squid3.conf /etc/init.d/squid3

# Creating empty blacklist.acl file for further blacklisting entries
touch /etc/squid3/blacklist.acl	

# Restarting Squid and enabling its service
service squid3 restart && update-rc.d squid3 defaults

# Opening default Squid port 3128 for clients to connect
iptables -I INPUT -p tcp --dport 3128 -j ACCEPT

# Saving firewall rules
iptables-save