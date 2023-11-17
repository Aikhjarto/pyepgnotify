# pyepgnotify
Reads EPG data from VDR, checks against a list of desired program titles, subtitles, or descriptions, and sends found programs HTML formatted via mail or it to stdout.

# Usage
```
usage: Epgnotify [-h] [--config file] [--stdout] [--cache-file file] [--epg-dst-file file] [--no-cache-write] [-v VERBOSITY]

Parses EPG data from VDR, checks against search config and sends mail. Already sent programs are stored in a cache to avoid multiple notifications on same program.

options:
  -h, --help            show this help message and exit
  --config file         Config file. If not given ~/epgnotify.yml is used.
  --stdout              Additionally print result to stdout
  --cache-file file     Optionally, cache file location, default epgnotfiy.cache.yaml in home directory is used. Use /dev/null to disable caching.
  --epg-dst-file file   Store received EPG data to a file
  --no-cache-write      If given, cache is not written, which is usefull for reproducible test-cases.
  -v VERBOSITY, --verbose VERBOSITY
                        Set verbosity according to python's logging level, i.e. CRITICAL=50, ERROR=40, WARNING=30, INFO=20, DEBUG=10
```
