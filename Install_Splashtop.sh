#! /bin/bash

KEY=""
URL1="https://support-splashtopbusiness.splashtop.com/hc/en-us/article_attachments/4406555764763/deploy_splashtop_streamer.sh"
OUT1="/tmp/deploy_splashtop.sh"
URL2="https://my.splashtop.com/csrs/mac"
OUT2="/tmp/splashtop.dmg"

curl $URL1 --output $OUT1 -L
curl $URL2 --output $OUT2 -L

sudo sh $OUT1 -i $OUT2 -d $KEY -v 0 -w 0 -s 0
