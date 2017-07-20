# defaults

## Dock

```shell
# restart Dock
$ killall Dock

# reset to factory settings
$ defaults delete com.apple.dock
$ killall Dock

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
```

## ScreenSharing

```shell
# show current screensharing settings
$ defaults read com.apple.ScreenSharing
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
```
