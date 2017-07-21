# Commands

## Softwareupdate

```shell
# list all available updates
$ softwareupdate -l

# install specific updates
$ sudo softwareupdate -i <NAME>

# install all updates
$ sudo softwareupdate -iva
```

## System informations

```shell
# system version information
$ sw_vers

# list disks (including internal and external)
$ diskutil list

# view running system daemons
$ sudo launchctl list
```

## System profiler

```shell
# show all informations
$ system_profiler

# show with specific detail level (basic|mini|full)
$ system_profiler -detailLevel mini

# show in specific format
$ system_profiler -detailLevel mini -xml

# list data types
$ system_profiler -listDataTypes

# show processor
$ system_profiler SPHardwareDataType | grep "Processor"

# show model
$ system_profiler SPHardwareDataType | grep "Model Identifier"
```

## Commandline Tools

```shell
# check if installed
$ xcode-select -p
...
/Library/Developer/CommandLineTools
...

# install
$ xcode-select --install
```

## Firewall

```shell
# enable firewall
$ sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

# enable logging
$ sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode on

# enable stealth mode
$ sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

# restart
$ sudo pkill -HUP socketfilterfw
```

## Network

```shell
# show ip (en0)
$ ipconfig getifaddr en0

# show mac address (eno)
$ ifconfig en0 | grep 'ether' | cut -d " " -f2

# restart interface (en0)
$ sudo ifconfig en0 down && sudo ifconfig en0 up

# list open network files
$ sudo lsof -Pni

# list contents of various network-related data structures
$ sudo netstat -atln

# show connections
$ networksetup -listallhardwareports

# disable interface (en0)
$ networksetup -setairportpower en0 off

# enable interface (en0)
$ networksetup -setairportpower en0 on

# show available wifi networks
$ /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s

# show current status of wifi
$ /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I

# disconnect from wifi network
$ sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -z

# show saved WiFi informations
$ cat /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist

# flush DNS
$ sudo killall -HUP mDNSResponder
```


## just for fun

```shell
# show calendar of specific year
$ ncal -w 2018

# permanently show Library
$ chflags nohidden ~/Library/

# permanently hide Library
$ chflags hidden ~/Library/

# stress your Mac
$ yes > /dev/null

# hide files (without .)
$ chflags hidden <file name>

# unhide files (without .)
$ chflags nohidden <file name>

# start quicklook
$ qlmanage -p Pictures/<file name>

# piping output into apps
$ ls -la | open -f
$ ls -la | open -f -a Atom
$ ls -la | open -f -a TextMate
```
