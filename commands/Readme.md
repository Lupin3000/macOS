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

# list USB devices (via I/O Kit registry)
$ ioreg -p IOUSB

# list USB devices (via I/O Kit registry and show properties)
$ ioreg -p IOUSB -l

# list USB devices (via I/O Kit registry and show properties with full-width display)
$ ioreg -p IOUSB -w0 -l

# show disk performance (disk0)
$ iostat -d disk0

# list users
$ dscl . list /Users | grep -v '^_'

# show memory statistics
$ vm_stat

# show status of loaded kernel extensions
$ sudo kextstat -l

# list all users
$ dscl . list /Users

# list all users and informations
$ dscacheutil -q user

# list all groups and informations
$ dscacheutil -q group
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

# list USB devices
$ system_profiler SPUSBDataType

# show processor
$ system_profiler SPHardwareDataType | grep "Processor"

# show model
$ system_profiler SPHardwareDataType | grep "Model Identifier"

# show screen resolution
$ system_profiler SPDisplaysDataType | grep "Resolution"

# show remaining battery (percentage)
$ pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d';'

# show remaining battery (time)
$ pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f3 -d';'
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
# clear arp cache
$ arp -ad

# show ip (en0)
$ ipconfig getifaddr en0

# show subnet mask (en0)
$ ipconfig getoption en0 subnet_mask

# show dns server (en0)
$ ipconfig getoption en0 domain_name_server

# show mac address (en0)
$ ifconfig en0 | grep 'ether' | cut -d " " -f2

# restart interface (en0)
$ sudo ifconfig en0 down && sudo ifconfig en0 up

# list open network files
$ sudo lsof -Pni

# list contents of various network-related data structures
$ sudo netstat -atln

# show list of locations
$ networksetup -listlocations

# show current location
$ networksetup -getcurrentlocation

# show all network interfaces
$ networksetup -listallnetworkservices

# displays list of hardware ports
$ networksetup -listallhardwareports

# displays a list of network services
$ networksetup -listnetworkserviceorder

# show specific Displays ethernet address
$ networksetup -getmacaddress en0

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

# scan port of URL range
$ /System/Library/CoreServices/Applications/Network\ Utility.app/Contents/Resources/stroke www.google.com 80 80
```

## Date and Time

```shell
# list available timezones
$ sudo systemsetup -listtimezones

# set timezone
$ sudo systemsetup -settimezone Europe/Berlin

# get current status
$ sudo systemsetup getusingnetworktime

# enable using network time
$ sudo systemsetup setusingnetworktime on

# disable using network time
$ sudo systemsetup setusingnetworktime off
```

## Remote Apple Events

```shell
# get current status
$ sudo systemsetup -getremoteappleevents

# enable remote events
$ sudo systemsetup -setremoteappleevents on

# disable remote events
$ sudo systemsetup -setremoteappleevents off
```

## enable/disable features

```shell
# enable locate
$ sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

# disable notification center service
$ launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && \
killall -9 NotificationCenter

# enable notification center service
$ launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# enable remote login
$ sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

# disable remote login
$ sudo launchctl unload -w /System/Library/LaunchDaemons/ssh.plist
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

# list installed Apps (via AppStore)
$ mdfind kMDItemAppStoreHasReceipt=1

# enable TRIM commands on third-party drives
$ sudo trimforce enable

# force disk cache to be purged
$ sudo purge

# show download history
$ sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent'

# prevent sleep
$ caffeinate

# show important dates
$ cat /usr/share/calendar/calendar.history
$ cat /usr/share/calendar/calendar.lotr
$ cat /usr/share/calendar/calendar.birthday
$ cat /usr/share/calendar/calendar.freebsd

# lock screen
$ /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
```

## Reset Network Settings

```shell
# change directory
$ cd /Library/Preferences/SystemConfiguration/

# delete files
$ sudo rm -f com.apple.airport.preferences.plist com.apple.network.identification.plist com.apple.wifi.message-tracer.plist NetworkInterfaces.plist preferences.plist
```
