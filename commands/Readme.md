# Commands

... some commands i sometime need...

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

## Network

```shell
# show ip (en0)
$ ipconfig getifaddr en0

# show mac address (eno)
$ ifconfig en0 | grep 'ether' | cut -d " " -f2

# restart interface (en0)
$ sudo ifconfig en0 down && sudo ifconfig en0 up

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

# flush DNS
$ sudo killall -HUP mDNSResponder
```