#!/usr/bin/env bash
# custom HTTP header response with Puppet

exec { 'http header':
	command  => 'sudo apt-get update -y;
	sudo apt-get install nginx -y
	sudo sed -i "/server_name -/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default
	sudo service nginx restart',
	provider => shell, 
}
