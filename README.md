# Note Taker
A simple script + cron job that create a plain text file for you to journal that day. If the note is not used it will clean it up for you. Notes are organized by year/month format.

### Running
**Mac**:
1. Create an example launchd script like the one provided under your LaunchAgents folder (/Library/LaunchAgents)
2. Load the daemon: `launchctl load ~/Library/LaunchAgents/<launchd-name>`
3. To stop the script use `launchctl unload`

**Linux**:
TBD

