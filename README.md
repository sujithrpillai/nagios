# Nagios
Docker image for Nagios 4.4.1 (Created with CentOS 7 base image)

## Quick References
The installation steps are referenced from following link,
https://support.nagios.com/kb/article/nagios-core-installing-nagios-core-from-source-96.html#CentOS

## How to use this image with Command-line
Running the image,
`docker run -d -p 80:80 srpillai/nagios`
Following parameters can be specified,
`-d` : For running in daemon mode
`-p <host port>:80` : For mapping the ports
`-v <host path>:/usr/local/nagios/etc/` : To map a custom configuration
`-v <host path>:/usr/local/nagios/var/logs` : To save the logs on the mounted volume
`-e NAGIOSADMIN:<nagios http user name>` : Custom Nagios Administrator user name
`-e NAGIOSPASS:<nagios http user password>` : Custom Nagios Administrator password
## How to use this image - Docker-compose
Following is a sample docker-compose file for running this image,
(You can get this in the GIT repo)
`nagios:`
`    image: nagios:4.4.1`
`    volumes:`
`            - /nagios/etc:/usr/local/nagios/etc`
`            - /nagios/logs:/usr/local/nagios/var/logs`
`    environment:`
`            - NAGIOSPASS=password`
`    ports:`
`            - 80:80`
