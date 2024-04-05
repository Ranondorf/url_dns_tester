# url_dns_tester
Basic loop to check DNS and perform a curl function on a URL. Practical application is to check availablity due to a failover (Load Balancer or DNS)
## Installation
### Prequisites
- No prequisites besides requiring DIG and CURL
### Installation and Running Program
Run bash script with two CLI arguments, the first is the FQDN, the next is the path

chmod +x url_dns_tester
./url_dns_tester.sh test.example.com my/test

The above will dig 'test.example.com' and perform a cul on 'https://test.example.com/my/test'. The full dig result is returned, but only the status code of the curl is returned.
All this is saved in a log file in the folder this function is called from.
 
## Credits
Ruwan Samaranayake
## License
Refer to license file in repository
