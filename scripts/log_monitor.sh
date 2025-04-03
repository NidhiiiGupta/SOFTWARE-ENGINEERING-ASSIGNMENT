#!/bin/bash

# Log file to monitor
LOG_FILE="/var/log/syslog"


EMAIL_RECIPIENT="admin@example.com"
EMAIL_SUBJECT="🚨 Critical Log Alert"


TEMP_FILE="/tmp/log_monitor_errors.txt"


scan_logs() {
    echo "Scanning logs for critical errors..."
    grep -i "error\|failed\|critical" "$LOG_FILE" > "$TEMP_FILE"
}


send_alert() {
    if [[ -s $TEMP_FILE ]]; then
        echo "Critical errors found! Sending email alert..."
        mail -s "$EMAIL_SUBJECT" "$EMAIL_RECIPIENT" < "$TEMP_FILE"
    else
        echo "No critical errors detected."
    fi
}


log_errors() {
    LOG_ARCHIVE="/var/log/monitored_errors.log"
    if [[ -s $TEMP_FILE ]]; then
        echo "Logging detected errors..."
        cat "$TEMP_FILE" >> "$LOG_ARCHIVE"
    fi
}


scan_logs
send_alert
log_errors


rm -f "$TEMP_FILE"

echo "Log monitoring completed successfully!"
