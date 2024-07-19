#!/usr/bin/bash


# Example ./url_dns_tester.sh example.com path
# Digs example.com
# Curls https://example.com/path and returns status code


output_file="output_file.txt"
entry=0

while :
do
	echo "###################################" >> $output_file
	echo "#########Entry: $entry ###" >> $output_file
	echo "###################################" >> $output_file
        echo "--------------Date-----------------" >> $output_file
	date -u >> $output_file
	echo "--------------Dig------------------" >> $output_file
	dig $1 @8.8.8.8 >> $output_file
	dig $1 >> $output_file
	echo "---------Curl--Result--------------" >> $output_file
	# curl -I -X GET https://$1/$2 | grep 'HTTP' >> $output_file
        curl -k -s -o /dev/null --connect-timeout 2 -w "%{remote_ip} - %{http_code}\n" https://$1/$2 >> $output_file
	echo "###################################" >> $output_file
	echo >> $output_file
	entry=$((++entry))
done
