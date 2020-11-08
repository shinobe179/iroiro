iroiro - Colorize syslog input
---

# How to use

```
### Python ###
$ tail -F /var/log/messages | python3 iroiro.py

### Nim ###
$ nim c ./nim/iroiro.nim
$ tail -F /var/log/messages | ./iroiro
```
