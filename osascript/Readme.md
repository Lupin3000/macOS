# osascript

## System Events

```shell
# shutdown without confirmation
$ osascript -e 'tell app "System Events" to shut down'

# restart without confirmation
$ osascript -e 'tell app "System Events" to restart'
```

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

## Finder

```shell
# open new Finder window
$ osascript -e 'tell app "Finder" to make new Finder window'

# empty Trash
$ osascript -e 'tell application "Finder" to empty trash'
```

## Safari

```shell
# open and focus Safari
$ osascript -e 'tell app "Safari" to activate'

# close Safari
$ osascript -e 'quit app "safari.app"'
```
