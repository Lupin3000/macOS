# osascript

## Volume

```shell
# show current volume
$ osascript -e 'output volume of (get volume settings)'

# set volume (0 - 100)
$ osascript -e 'set volume output volume 50'

# show mute state
$ osascript -e 'output muted of (get volume settings)'

# set mute state (true, false)
$ osascript -e 'set volume output muted true'
```
