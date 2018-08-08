#!/bin/bash
#This script starts HTTPD service and Nagios server
/usr/local/nagios/bin/nagios -d /usr/local/nagios/etc/nagios.cfg
/usr/sbin/httpd -DFOREGROUND
