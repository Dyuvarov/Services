# Introduction  

## What about
* Docker
* Kubernetes

## Requirements
* Linux or MacOS
* Minikube
* Docker
* VirtualBox

# How to launch
Everything you need is to launch the scrip "setup.sh" (use "bash setup.sh" in the root of repository).

# Follow me:stuck_out_tongue_winking_eye:
inst: [@dyuvarov](www.instagram.com/dyuvarov/)

# Main Part
## Services
### :white_check_mark:NGINX
Works on 192.168.99.100:80,  192.168.99.100:443. Redirects from http(192.168.99.100:80) to https(192.168.99.100:443).  
You can connect to this container with **ssh** on port 21 (192.168.99.100:21). User : *admin*, password: *admin*.  

From NGINX you can redirect to Wordpress (add /wordpress in address line) and phpMyAdmin (add /phpmyadmin in address line).  

### :white_check_mark:WordPress
Just default WordPress page and 3 users:
* admin (pass admin)
* author (pass author)
* editor (pass editor)
  
Try to guess the roles of this users:wink:

### :white_check_mark:PHPMYADMIN
Helps you to work with WordPress database. User : *admin*, password: *admin*.

### :white_check_mark:MYSQL
Database MariaDB. Data storage for Wordpress. Wordpress and phpMyAdmin works with this database.

### :white_check_mark:GRAFANA
Shows metrics from all services. User : *admin*, password: *admin*.

### :white_check_mark:InfluxDB
Database for metrics to show in grafana.