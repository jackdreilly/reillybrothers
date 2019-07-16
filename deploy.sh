#!/bin/sh
gcloud compute scp dist.zip reilly:/tmp/
gcloud compute ssh reilly -- '\
cd /tmp && \
unzip dist.zip && \
sudo rm -rf /usr/share/nginx/html/* && \
sudo mv -f  /tmp/dist/* /usr/share/nginx/html/ && \
sudo rm -rf /tmp/dist* \
'

