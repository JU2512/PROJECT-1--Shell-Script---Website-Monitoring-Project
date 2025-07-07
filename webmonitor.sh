#!/bin/bash
URL="https://github.com"
destination="$HOME/ubuntu/PROJECT-1--Shell-Script---Website-Monitoring-Project/website_health_logs"
mkdir -p "$destination"
today=$(date +"%Y-%m-%d")
Log_File="$destination/health_log_$today.log"
response=$( curl -o /dev/null -s -A "Mozilla/5.0" -w "%{http_code} %{time_total}" "$URL")
status_code=$( echo "$response" | awk '{ print $1 }')
response_time=$( echo "$response" | awk '{ print $2 }')
timestamp=$(date +"%Y-%m-%d  %H:%M:%S")
echo "$timestamp | status: $status_code | Response_time: $response_time" >> Log_File
