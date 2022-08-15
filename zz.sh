#!/bin/bash

zstack-ctl stop
mkdir -p /usr/local/zstack/apache-tomcat/webapps/zstack/WEB-INF/classes/org/zstack/license
cd /usr/local/zstack/apache-tomcat/webapps/zstack/WEB-INF/classes/org/zstack/license
wget https://raw.githubusercontent.com/angelkyo/adt/master/SMIMEVerifier.class -O SMIMEVerifier.class
chown zstack:zstack SMIMEVerifier.class
zstack-ctl start


