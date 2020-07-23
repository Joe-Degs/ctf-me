# Cross Site Scripting -> XSS

- Cross site scripting is a web vulnerability, its a type of injection where the user inject malicious scripts and have it execute on the users machine.

- Most of the owasp top 10 we've looked at a as a result of unsanitized input from users. Interesting to take out from this ten day learning experience.

- xss is possible in javascript, vbscript(i always wanted to learn vbscript even before i knew javascript) and css
threee main types of xss attacks and they are;
1. stored xss -> stored in a database and recollected later (xtremely dangerous)
2. reflected xss -> part of the victims request to the website. The website includes the payload in the response back to the user and the user is trcked into clicking it.
3. DOM-Based xss -> the payoad gets loaded into the dom and executed at once on the victims session or something.

### Payload

xss is a vulnerability that can be exploited to execute javascript code on a victim's machine. some common payloads.
popup's `<script>alert("Hello World")</script>`
writing html `document.write`
xss port scanner (http://www.xss-payloads.com/payloads/scripts/portscanapi.js.html)
xss keylogger (http://www.xss-payloads.com/payloads/scripts/simplekeylogger.js.html)

`<script>alert(window.location.hostname)`

```
(Hi <h1>some<h2>)</a>

</a>) <h1>somethings for nothing </h1>"

<script>document.title = "I am a hacker"</script>

<script>document.querySelector('#thm-title').textContent = 'I am a hacker' </script>

```

Completed this room.


