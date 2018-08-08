# nagios
Docker image for Nagios 4.4.1 (Created with CentOS 7 base image)

## Quick References
The installation steps are referenced from following link,<br>
https://support.nagios.com/kb/article/nagios-core-installing-nagios-core-from-source-96.html#CentOS

## How to use this image with Command-line
Running the image,<br>
`docker run -d -p 80:80 srpillai/nagios`
Following parameters can be specified, <br>
`-d` : For running in daemon mode<br>
`-p <host port>:80` : For mapping the ports<br>
`-v <host path>:/usr/local/nagios/etc/` : To map a custom configuration (You will need to intially copy the default configuration<br>
`-v <host path>:/usr/local/nagios/var/logs` : To save the logs permanently on the mounted volume<br>
`-e NAGIOSADMIN:<nagios http user name>` : To provide custom Nagios Administrator user name<br>
`-e NAGIOSPASS:<nagios http user password>` : To provide custom Nagios Administrator password<br>
## How to use this image - Docker-compose
Following is a sample docker-compose file for running this image,<br>
(You can get this in the GIT repo)<br>
`nagios:`<br>
`    image: nagios:4.4.1`<br>
`    volumes:`<br>
`            - /nagios/etc:/usr/local/nagios/etc`<br>
`            - /nagios/logs:/usr/local/nagios/var/logs`<br>
`    environment:`<br>
`            - NAGIOSPASS=password`<br>
`    ports:`<br>
`            - 80:80`<br>
