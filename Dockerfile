FROM mysql:5.6
MAINTAINER Kwok-kuen Cheung
 
RUN \
    echo "deb http://repo.percona.com/apt wheezy main testing" > /etc/apt/sources.list.d/percona.list && \
    echo "deb-src http://repo.percona.com/apt wheezy main testing" >> /etc/apt/sources.list.d/percona.list && \
    apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A && \
    apt-get update && apt-get install -y percona-xtrabackup
