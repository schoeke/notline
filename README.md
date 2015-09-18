# Simple notifications for Jackline on Mac OS

This project uses [Terminal Notifier](https://github.com/julienXX/terminal-notifier) to bring notifications from [Jackline](https://github.com/hannesm/jackline) to your Notification Center. You can install Terminal Notifier with

`brew install terminal-notifier` if you have [brew](http://brew.sh/) installed or


`gem install terminal-notifier` if you prefer ruby.

This is a very basic script and can take the location of a state file as an optional argument. This is in case that your config folder is in a non-default location.
Out of the box, it checks the state file every 5 seconds. Feel free to decrease or increase this timeout by editing line 33.