# defaults

Set preferences, the macOS user defaults system works with both the OS and with individual applications.

**Note:** If you change a default that belongs to a running application, the application won't see the change and might even overwrite the default. In general you should close an application before changing its defaults, in the case of Dock and Finder defaults - restart them after applying! Preferences are stored in a set of files under _~/Library/Preferences_, however using the defaults command is much safer than manually editing a .plist file.

## Dock

```shell
# restart Dock
$ killall Dock

# reset to factory settings
$ defaults delete com.apple.Dock

# show current dock settings
$ defaults read com.apple.Dock

# add blank space
$ defaults write com.apple.Dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# add recent items folder
$ defaults write com.apple.Dock persistent-others -array-add '{"tile-data" = {"list-type" = 1;}; "tile-type" = "recents-tile";}'

# highlights the item under the cursor
$ defaults write com.apple.Dock mouse-over-hilite-stack -bool yes

# show only active Apps
$ defaults write com.apple.Dock static-only -bool true

# active single app mode
$ defaults write com.apple.Dock single-app -bool true

# show hidden apps
$ defaults write com.apple.Dock showhidden -bool yes

# set icon size to 45 pixels
$ defaults write com.apple.Dock tilesize -int 45

# disable auto hide
$ defaults write com.apple.Dock autohide -bool false

# enable auto hide
$ defaults write com.apple.Dock autohide -bool true

# position bottom
$ defaults write com.apple.Dock orientation -string bottom

# position left
$ defaults write com.apple.Dock orientation -string left

# position right
$ defaults write com.apple.Dock orientation -string right

# show wallpaper location
$ defaults write com.apple.Dock desktop-picture-show-debug-text -bool true

# don't show wallpaper location
$ defaults delete com.apple.Dock desktop-picture-show-debug-text

# disable animations when you open an application from the Dock
$ defaults write com.apple.Dock launchanim -bool false

# disable delay when you hide the Dock
$ defaults write com.apple.Dock autohide-delay -float 0

#set speed for Mission Control (fast)
$ defaults write com.apple.Dock expose-animation-duration -float 0.1
```

# Launchpad

```shell
# restart Launchpad
$ killall Dock

# enlarging the Icons
$ defaults write com.apple.Dock springboard-rows -int 4
$ defaults write com.apple.Dock springboard-columns -int 4

# shrinking the Icons
$ defaults write com.apple.Dock springboard-rows -int 10
$ defaults write com.apple.Dock springboard-columns -int 10

# reset to factory seetings
$ defaults delete com.apple.Dock springboard-rows
$ defaults delete com.apple.Dock springboard-columns
$ defaults write com.apple.Dock ResetLaunchPad -bool true
```

# Dashboard

```shell
# restart Dashboard
$ killall Dock

# show current Dashboard settings
$ defaults read com.apple.Dashboard

# disable dashboard
$ defaults write com.apple.Dashboard mcx-disabled -boolean true

# enable dashboard
$ defaults write com.apple.Dashboard mcx-disabled -boolean false
```

## Finder

```shell
# restart Finder
$ killall Finder

# show current Finder settings
$ defaults read com.apple.Finder

# show hidden files
$ defaults write com.apple.Finder AppleShowAllFiles YES

# hide hidden files
$ defaults write com.apple.Finder AppleShowAllFiles NO

# hide file extension
$ defaults write NSGlobalDomain AppleShowAllExtensions -bool false

# show file extension
$ defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# enable timestamp on zip filenames
$ defaults write com.apple.Finder ArchiveTimestamp -bool true

# disable timestamp on zip filenames
$ defaults delete com.apple.Finder ArchiveTimestamp

# turn of empty trash sound
$ defaults write com.apple.Finder FinderSounds -bool false

# turn on empty trash sound
$ defaults delete com.apple.Finder FinderSounds

# folders on top when sorting by name
$ defaults write com.apple.Finder _FXSortFoldersFirst -bool true

# show POSIX path
$ defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true

# show status bar
$ defaults write com.apple.Finder ShowStatusBar -bool true

# show path bar
$ defaults write com.apple.Finder ShowPathbar -bool true

# disable animation when opening the Info window in Finder
$ defaults write com.apple.Finder DisableAllAnimations -bool true

# show internal hard drives on desktop
$ defaults write com.apple.Finder ShowHardDrivesOnDesktop -bool true

# show external hard drives on desktop
$ defaults write com.apple.Finder ShowExternalHardDrivesOnDesktop -bool true

# show removable media on desktop
$ defaults write com.apple.Finder ShowRemovableMediaOnDesktop -bool true

# show mounted servers on desktop
$ defaults write com.apple.Finder ShowMountedServersOnDesktop -bool true

# disable the warning before emptying the Trash
$ defaults write com.apple.Finder WarnOnEmptyTrash -bool false
```

## Safari

```shell
# show current safari settings
$ defaults read com.apple.Safari

# disable safari auto open files
$ defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# enable safari auto open files
$ defaults write com.apple.Safari AutoOpenSafeDownloads -bool true

# hide bookmarks bar
$ defaults write com.apple.Safari ShowFavoritesBar -bool false

# show bookmarks bar
$ defaults write com.apple.Safari ShowFavoritesBar -bool true

# hide developer menu
$ defaults write com.apple.Safari IncludeDevelopMenu -bool false

# show developer menu
$ defaults write com.apple.Safari IncludeDevelopMenu -bool true

# enable tab memory
$ defaults write com.apple.Safari NSQuitAlwaysKeepsWindows -bool true

# disable tab memory
$ defaults write com.apple.Safari NSQuitAlwaysKeepsWindows -bool false
```

## Preview

```shell
# show current preview settings
$ defaults read com.apple.Preview
```

## Terminal

```shell
# show current terminal settings
$ defaults read com.apple.Terminal

# disable line marks
$ defaults write com.apple.Terminal ShowLineMarks -int 0

# use UTF-8 only
$ defaults write com.apple.Terminal StringEncodings -array 4
```

## Spotlight

```shell
# show current spotlight settings
$ defaults read com.apple.Spotlight
```

## Photos

```shell
# show current photos settings
$ defaults read com.apple.Photos

# prevent automatically opening
$ defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
```

## ScreenSharing

```shell
# show current screensharing settings
$ defaults read com.apple.ScreenSharing
```

## QuickTime

```shell
# show current QuickTime settings
$ defaults read com.apple.QuickTimePlayerX

# diable rounded corners
$ defaults write com.apple.QuickTimePlayerX MGCinematicWindowDebugForceNoRoundedCorners -bool true

# enable rounded corners
$ defaults delete com.apple.QuickTimePlayerX MGCinematicWindowDebugForceNoRoundedCorners

# enable autostart movies
$ defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen -bool true

# disable autostart movies
$ defaults delete com.apple.QuickTimePlayerX MGPlayMovieOnOpen

# disable controller bar
$ defaults write com.apple.QuickTimePlayerX MGUIVisibilityNeverAutoshow -bool true

# enable controller bar
$ defaults delete com.apple.QuickTimePlayerX MGUIVisibilityNeverAutoshow

# enable auto show subtitles
$ defaults write com.apple.QuickTimePlayerX MGEnableCCAndSubtitlesOnOpen -bool true

# disable auto show subtitles
$ defaults delete com.apple.QuickTimePlayerX MGEnableCCAndSubtitlesOnOpen
```

## Apache

```shell
# read apache LaunchDaemons settings
$ defaults read /System/Library/LaunchDaemons/org.apache.httpd.plist

# enable apache on boot
$ sudo defaults write /System/Library/LaunchDaemons/org.apache.httpd Disabled -bool false
```

## Wifi

```shell
# show Wi-Fi connection history
$ defaults read /Library/Preferences/SystemConfiguration/com.apple.airport.preferences | grep LastConnected -A 7
```

## Enable/Disable features

```shell
# disable autocorrect
$ defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# enable autocorrect
$ defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true

# disable .DS_Store
$ defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# enable .DS_Store
$ defaults write com.apple.desktopservices DSDontWriteNetworkStores false

# disable crash reporter
$ defaults write com.apple.CrashReporter DialogType none

# disable save into iCloud
$ defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# disable rubber-band scrolling
$ defaults write -g NSScrollViewRubberbanding -int 0

# enable rubber-band scrolling
$ defaults delete -g NSScrollViewRubberbanding

# enable AirDrop for ethernet
$ defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# expand save dialog
$ defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# expand print dialog
$ defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# disable animations when opening and closing windows
$ defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# disable animations when opening a Quick Look window
$ defaults write -g QLPanelAnimationDuration -float 0
```
