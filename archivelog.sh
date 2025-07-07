#!/bin/bash
source="$HOME/ubuntu/PROJECT-1--Shell-Script---Website-Monitoring-Project/website_health_logs"
Yesterday=$( date -d "yesterday" +"%Y-%m-%d")
Yesterday_Log="$source/health_log_$Yesterday.log"
Yesterday_archive="$source/health_log_$Yesterday.tar.gz"
Archive_History="$source/archive_history.log"
if [ -f "$Yesterday_Log" ] && [ ! -f "$Yesterday_archive" ]; then
        tar -czf "$Yesterday_archive" "$Yesterday_Log"
        rm "$Yesterday_Log"
        echo "$(date)|Archived $Yesterday" >> "$Archive_History"
else
        echo " $(date) | Nothing to Archive already archived " >> "$Archive_History"
fi
