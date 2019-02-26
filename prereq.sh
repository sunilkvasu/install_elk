#!/bin/bash
echo
echo "# Please execute the below commands..."
echo "cd packages"
for line in `grep "elasticsearch_package\|kibana_package\|logstash_package" inv`;do
  urlm1=`echo $line|cut -d"_" -f1`
  urlm2=`echo $line|cut -d"=" -f2`
  url="https://artifacts.elastic.co/downloads/$urlm1/$urlm2"
  echo "wget $url"
done

