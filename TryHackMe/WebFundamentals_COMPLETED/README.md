# WEb Fundamentals

```
export IP=10.10.242.175
```


### [Tasks] Verbs and Request Formats and Cookies and Http Requests

- I cant recall all the http verbs off the top of my head, i dont have to, i just need to know how to get them off google.
i once made an http request with netcat but forgot how i did that so im gonna keep a little note here i can refer to later.
```
How to make a manual http request with netcat.

nc <ip> <port>
GET /linPeas.sh HTTP/1.1
Host: <ip>:<port> or url
Connection: closed
```
- On the topic of making manual http requests. You can manually set the cookies on manualv requests made with netcat
```
"Set-Cookie: <cookie-name>=<cookie-value>"
```
you can set multiple cookies by separating each name-value pair with semicolons.

- A sample example of a server sending headers to tell client to store cookies.
```
HTTP/2.0 200 OK
Content-Type: text/html
Set-Cookie: yummy_cookie=choco
Set-Cookie: tasty_cookie=strawberry
```

- Now with every subsequent request, the client has to add the cookies in a request header.
```
GET /sample_page.html HTTP/2.0
Host: www.example.org
Cookie: yummy_cookie=choco; tasty_cookie=strawberry
```

- Making simple http requests with cURL.

```
curl -X POST http://$IP:8081/ctf/post --data "flag_please"
```

```
curl -s -D - -o /dev/null http://$IP:8081/ctf/getcookie
```
`-s` : Avoid showing progress bar
`-D -`: Dumps headers to file but `-` dumps it to stdout
`-o /dev/null`: ignore the response body

```
curl -s -D -o /dev/null -b "flagpls=flagpls" http://$IP:8081/ctf/sendcookie
```
`-b`: send cookies.. 