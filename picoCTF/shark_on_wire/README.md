# Shark On Wire 

Packet streams and what not :(
I'm advised to use wireshark, but downloading a GUI app is not the best for my pc at the moment.

Hmm packet capture the worst nightmare fellows... but i have to install wireshark regardless or i may use an online tool.
Also theres this walkthrough thats using a python script to get the flag and it looks pretty awesome too.
I pray all this start to make sense real soon. I may drop some random packets up someones ass LOL!.

`tcpdump` commands that were useful in this challenge
`tcpdump -nn -r capture.pcap src 192.168.2.1` this one was for filtering the packets from the port specified.
`tcpdump -nn -r capture.pcap` dump raw packet data on the stdout.
