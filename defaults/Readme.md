# defaults

## Dock

```shell
# restart Dock
$ killall Dock

# reset to factory settings
$ defaults delete com.apple.dock

# show current dock settings
$ defaults read com.apple.dock

# add blank space
$ defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# set icon size to 45 pixels
$ defaults write com.apple.dock tilesize -int 45

# disable auto hide
$ defaults write com.apple.dock autohide -bool false

# enable auto hide
$ defaults write com.apple.dock autohide -bool true

# position bottom
$ defaults write com.apple.dock orientation -string bottom

# position left
$ defaults write com.apple.dock orientation -string left

# position right
$ defaults write com.apple.dock orientation -string right

# show wallpaper location
$ defaults write com.apple.dock desktop-picture-show-debug-text -bool true

# don't show wallpaper location
$ defaults delete com.apple.dock desktop-picture-show-debug-text
```

# Launchpad

```shell
# enlarging the Icons
$ defaults write com.apple.dock springboard-rows -int 4
$ defaults write com.apple.dock springboard-columns -int 4
$ killall Dock

# shrinking the Icons
$ defaults write com.apple.dock springboard-rows -int 10
$ defaults write com.apple.dock springboard-columns -int 10
$ killall Dock

# reset to factory seetings
$ defaults delete com.apple.dock springboard-rows
$ defaults delete com.apple.dock springboard-columns
$ defaults write com.apple.dock ResetLaunchPad -bool true
$ killall Dock
```

# Dashboard

```shell
# disable dashboard
$ defaults write com.apple.dashboard mcx-disabled -boolean true
$ killall Dock

# enable dashboard
$ defaults write com.apple.dashboard mcx-disabled -boolean false
$ killall Dock
```

## Finder

```shell
# restart Finder
$ killall Finder

# show current Finder settings
$ defaults read com.apple.finder

# show hidden files
$ defaults write com.apple.Finder AppleShowAllFiles YES

# hide hidden files
$ defaults write com.apple.Finder AppleShowAllFiles NO

# hide file extension
$ defaults write NSGlobalDomain AppleShowAllExtensions -bool false

# show file extension
$ defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# enable timestamp on zip filenames
$ defaults write com.apple.finder ArchiveTimestamp -bool true

# disable timestamp on zip filenames
$ defaults delete com.apple.finder ArchiveTimestamp

# turn of empty trash sound
$ defaults write com.apple.finder FinderSounds -bool false

# turn on empty trash sound
$ defaults delete com.apple.finder FinderSounds
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
$ defaults write com.apple.safari NSQuitAlwaysKeepsWindows -bool true

# disable tab memory
$ defaults write com.apple.safari NSQuitAlwaysKeepsWindows -bool false
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
```
