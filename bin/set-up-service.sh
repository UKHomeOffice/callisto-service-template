#!/bin/bash

read -p "please enter the new service name: " serviceName

grep -RIl REPLACE-SERVICE-NAME --exclude-dir={./target,./.idea} --exclude={README.md,./set-up-service.sh} | xargs sed -i '' "s/REPLACE-SERVICE-NAME/$serviceName/g"

while true; do
    read -p "Do you want to set the port number for the service?  [y/n]" yn
    case $yn in
        [Yy]* ) read -p "Please enter the port the new service will expose: " portNumber
                grep -RIl REPLACE-SERVICE-PORT --exclude-dir={./target,./.idea} --exclude={README.md,./set-up-service.sh} | xargs sed -i '' "s/REPLACE-SERVICE-PORT/$portNumber/g"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you want to set the port number for localdev?  [y/n]" yn
    case $yn in
        [Yy]* ) read -p "Please enter the port for local dev: " localPort
                grep -RIl REPLACE-LOCAL-PORT --exclude-dir={./target,./.idea} --exclude={README.md,./set-up-service.sh} | xargs sed -i '' "s/REPLACE-LOCAL-PORT/$localPort/g"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you have a quay repo setup?  [y/n]" yn
    case $yn in
        [Yy]* ) read -p "Please enter the name of the quay repo: " quayRepo
                grep -RIl REPLACE-QUAY-REPO --exclude-dir={./target,./.idea} --exclude={README.md,./set-up-service.sh} | xargs sed -i '' "s/REPLACE-QUAY-REPO/$quayRepo/g"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you know the name for the kafka topic?  [y/n]" yn
    case $yn in
        [Yy]* ) read -p "Please enter the name of the kafka topic: " kafkaTopic
                grep -RIl REPLACE-TOPIC-NAME --exclude-dir={./target,./.idea} --exclude={README.md,./set-up-service.sh} | xargs sed -i '' "s/REPLACE-TOPIC-NAME/$kafkaTopic/g";
                read -p "Please enter the name this service will use as a kafka identity i.e timecard-restapi: " mskIdentity
                grep -RIl REPLACE-KAFKA-IDENTITY --exclude-dir={./target,./.idea} --exclude={README.md,./set-up-service.sh} | xargs sed -i '' "s/REPLACE-KAFKA-IDENTITY/$mskIdentity/g"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


