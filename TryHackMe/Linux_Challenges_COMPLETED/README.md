# Linux Challenges

```
export IP=10.10.171.62
```

- Now warming up with some ssh challenges and `cat`-ing flags up and around.

- Did some `crontab -l` already... man this shit is getting wild as fuck.
I believe i am proficient in linux so this challenges are going to be from my own reconnaissance no write ups today broo :).

- Doing some work sieving through log files looking for flags merhn.
This fucken grep command is wanting to kill me :(.

- Fuck grep i was tryna be smart.. maybe i should just do it the dumb way.
Oh i got it now. 
```
egrep '^[0-9a-f]{32}' flagtourteen.txt

Couple of other commands i want to learn.

$ grep -o '^[^:]*' file
3fce110

$ awk -F: '{print $1}' file
3fce110

$ cut -d: -f1 file
3fce110

$ sed  's/:.*//' file
3fce110
```

- The fifteenth flag is messing withmy head bigtime.
suspicious looking files from `find / -name "*release" 2>/dev/null`
```
/etc/lsb-release
/etc/update-manager/meta-release
/etc/os-release
/snap/core/5742/etc/lsb-release
/snap/core/5742/etc/os-release
/snap/core/5742/usr/lib/os-release
/snap/core/5742/usr/share/doc/lsb-release
/snap/core/6405/etc/lsb-release
/snap/core/6405/etc/os-release
/snap/core/6405/usr/lib/os-release
/snap/core/6405/usr/share/doc/lsb-release
/proc/sys/kernel/osrelease
```
Found the flag in the first file. Ive been on this for sometime.

- Im trying to cat somefiles out and then select a specific text on a specific line.
```
cut -n file.txt | sed "20!d" //this is no good

cut -n file.txt | grep 2345
```

- Wow this session is unnecessarily wild. Merhn im tryna look for the flag and still can't find.

- Now analysing a compiled c program for flag. which kind of trouble is this.
i ran sudo -l on on the machine.
Found some interesting that can give me root on the machine but thats now why we are here :). fucken rabbit hole.
I found it by using strings. Apparently it was there all along i was looking elsewhere.

- Im searching for a string that contains some hex like values and is 32 digits long in all files.
I actually dont know this soo... i got it off the interwebz.
```
find / -xdev -type f -print0 2>/dev/null | xargs -0 grep -E ‘^[a-z0–9]{32}$’ 2>/dev/null

'//time to recraft this piece of work of a regex.
// -xdev is for not descending into directories on other file sytems but desperate times call for desperate measures so imma do just that! :)

find / -xdev -type f -print0 2>/dev/null | xargs -0 egrep "^4bceb[0-9a-z]{27}$" 2>/dev/null

//this is taking more time than imagined. Removing the -xdev was another bad idea as usual,
looks like i am extremely good at those :)
```


- I am looking for some string and doing a whole bunch of changes to the file and selecting the last element.
```
cat /home/garry/flag29 | tr -d ' '| tr -d '\n'| rev | cut -d',' -f1 | rev

find / -name flag29 -print0 2>/dev/null | xargs -0 cat | tr -d ' '| tr -d '\n'| rev | cut -d',' -f1 | rev

//all works just fine. but took me a very long time to perfect.
```

- I am looking for services running on a particular port. used `netstat -nla | grep "LISTEN"`
- this time it is a mysql database that im connecting to and getting a table name.
Had some fucking sleep. Now my mind 

- Looking for where personal $PATH are stored????????>>>>><<<<<>,,,,,,
```
find /home -name .profile -print0 2>/dev/null | xargs -0 grep -i "flag" 2>/dev/null
```

*Hohhh its DONE!*