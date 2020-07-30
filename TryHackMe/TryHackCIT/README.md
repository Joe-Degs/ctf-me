# TryHackCIT CTF Challenges.

```
export IP=10.10.211.2
```

- Ive done this room, so its not much of a challenge... more of a revision. let me ssh into the machine and collect all the flags.

- Done with the challenges for today.

- Im tryna craft a bash oneline to loop and decode the base64 text and output on the 50th run.

```
for i in {1...50}; do if ["$i" -eq 50]; then echo "$(enc=$(base64 -d b64.txt))"; else enc=$(base64 -d b64.txt); fi ; done

cat b64.txt | base64 -d > enc; for i in {1...49}; do if ((i==49)); then cat enc | base64 -d; else cat enc | base64 -d > enc; fi ; done

```

what im i doing wrong here.