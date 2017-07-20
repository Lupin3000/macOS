# defaults

## Restart

```shell
# restart Dock
$ killall Dock
```

## Enable/Disable features

```shell
# disable autocorrect
$ defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# enable autocorrect
$ defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true

# read dock settings
$ defaults read com.apple.dock

# read safari settings
$ defaults read com.apple.Safari

# disable safari auto open files
$ defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# enable safari auto open files
$ defaults write com.apple.Safari AutoOpenSafeDownloads -bool true
```
