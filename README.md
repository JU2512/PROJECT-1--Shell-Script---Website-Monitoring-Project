📌 Project Title
Website Uptime Monitoring with Shell Script + Cron Jobs

📄 Description
This project monitors the health of websites by sending HTTP requests at regular intervals. It automatically logs response codes and statuses, and archives logs daily.

📁 Directory Structure

## PROJECT-1--Shell-Script---Website-Monitoring-Project/
├── webmonitor.sh              # Main script to check website uptime
├── archivelog.sh              # Script to archive logs daily
├── website_health_logs/       # Stores logs (e.g., debug.log, archive_history.log)
└── README.md                  # Project documentation


🛠️ Setup Instructions

##Make the scripts executable:
chmod +x webmonitor.sh
chmod +x archivelog.sh

##Ensure log directory exists:

mkdir -p website_health_logs

##Open crontab:

crontab -e
 
##Add the following cron jobs:

* * * * * /home/ubuntu/PROJECT-1--Shell-Script---Website-Monitoring-Project/webmonitor.sh
10 0 * * * /home/ubuntu/PROJECT-1--Shell-Script---Website-Monitoring-Project/archivelog.sh

## 🧪 How to Run Manually
You can manually test the scripts before relying on cron:

./webmonitor.sh
./archivelog.sh

Make sure you're in the project directory:

cd /home/ubuntu/PROJECT-1--Shell-Script---Website-Monitoring-Project

## 📤 Expected Output (after running)

You can expect output to be written to files inside:

-> website_health_logs/
-> Example file (after running archivelog.sh):
-> website_health_logs/archive_history.log

## 🧾 Notes
-> Avoid using quotes (") in crontab paths.

-> Use full paths in cron.

##Cron logs can be viewed (optional) via:

grep CRON /var/log/syslog


## 👤 Author
Name: Jyothi Urade
GitHub: https://github.com/JU2512
