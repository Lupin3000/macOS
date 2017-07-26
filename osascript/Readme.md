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

# set background image
$ osascript -e 'tell application "Finder" to set desktop picture to POSIX file "<path/to/image>"'

# eject all mountable volumes
$ osascript -e 'tell application "Finder" to eject (every disk whose ejectable is true)'

# choose file by Finder and print parent folder
$ osascript -e 'tell application "Finder" to get name of container of (choose file)'

# hide Calendar
$ osascript -e 'tell application "Finder"' -e 'set visible of process "Calendar" to false' -e 'end tell'
```

## Messages

```shell
# open Messages
$ osascript -e 'tell application "messages" to activate'
```

## Safari

```shell
# open and focus Safari
$ osascript -e 'tell app "Safari" to activate'

# close Safari
$ osascript -e 'quit app "safari.app"'

# get current URL
$ osascript -e 'tell application "Safari" to get URL of current tab of front window'

# change to 2nd tab
$ osascript -e 'tell application "Safari" to tell front window to set current tab to tab 2'

# close 1st tab
$ osascript -e 'tell application "Safari" to close tab 1 of window 1'
```

## iTunes

```shell
# open iTunes
$ osascript -e 'tell application "iTunes" to activate'
```
