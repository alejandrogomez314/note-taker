# Note Taker
A simple script + cron job that create a plain text file for you to journal that day. If the note is not used it will clean it up for you. Notes are organized by year/month format.

### Prerequisites
TBD: Platform requirements
- Run `./install.sh` script if you want to have it available on your path

### Running
**Mac**:
1. Create an example launchd script like the one provided under your LaunchAgents folder (/Library/LaunchAgents)
2. Load the daemon: `launchctl load ~/Library/LaunchAgents/<launchd-name>`
3. To stop the script use `launchctl unload`

**Linux**:
TBD

### References:
- [A Simple Launchd Tutorial](https://medium.com/@chetcorcos/a-simple-launchd-tutorial-9fecfcf2dbb3)
- [How to Use launchd to Run Scripts on Schedule in macOS](https://www.maketecheasier.com/use-launchd-run-scripts-on-schedule-macos/)
