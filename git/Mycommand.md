#                Server Management for Firewall and Security


#  Directory Creation & Organization:
- mkdir firewall_security_server
- ls
- cd ./firewall_security_server
- mkdir Firewall_Logs Intrusion_Detection Access_Logs Security_Reports
- cd ./ Firewall_Logs/
- touch Access_Logs Security_Logs Error_Logs Audit_Logs Event_Logs 
- ls
- cd ..
- cd ./Access_Logs/
- touch Timestamp Source_IP_Address Destination_IP_Address Source_Port Destination_Port
- ls 
- cd .. 
- cd ./Intrusion_Detection/
- touch Alert_Logs Event_Logs Packet_Capture_Files Configuration_Files Report_Files
- ls
- cd ..
- cd ./Security_Reports/
- touch Threat_Intelligence_Reports Security_Metrics_Reports Compliance_Audit_Reports Vulnerability_Assessment_eports Incident_Report
- ls
- cd ..
#  Rename Files:
- cd ./Firewall_Logs/
- mv Access_Logs access_logs
- mv Audit_Logs audit_logs
- mv Error_Logs error_logs 
- cd ..
#  Navigation & Listing Files:
- pwd 
- ls
#  File Permissions Management:
- cd ./Security_Reports/
- touch security_alerts.txt
- ls -all 
- chmod 600 security_alerts.txt
- cd .. 
#  Backup Files:
- pwd
- mkdir Backup
- cd ..
- cp ./firewall_security_server/Access_Logs/ ./firewall_security_server/Backup/
- cd ./Backup/
- ls
#  Removing Files & Directories:/
- cd ./Firewall_Logs/
- mkdir unused_firewall
- cd ./unused_firewall/
- touch asdfghjkl
- cd ..
- rm -rf unused_firewall ./Intrusion_Detection/
- cd ..
#  Creating a Script for File Generation:
- cd ./Security_Reports/
- ls
- touch alert.sh//
- ls
- nano alert.sh
- ./alert.sh
#  Exploring File History:
- history
#  System Monitoring:
- uptime
- du
- ds
#  Checking File Ownership and Permissions:
- chmod 774 .
- chmod 774 ..
#  Ping Test & Network Verification:
- ping google.com
- cd ..
#  Search for Specific Files or Content:
- cd ./Firewall_logs 
- grep "is" access_logs
- cd ..
#  Create a Directory for Each User:
- cd ./Security_Reports
- mkdir security_alerts
- cd ..
- cd ./Access_Logs
- mkdir Source_ip_address
- cd ..
- cd ./ Intrusion_Detection
- mkdir Alert_logs
- cd ..
- cd ./Firewall_Logs/
- mkdir Error_logs
- cd ..
#  Create a Script for Directory Cleanup:
- touch cleanup_directories.sh
- nano cleanup_directories.sh
- chmod 700 cleanup_directories.sh 
- ./cleanup_directories.sh
- cd ..
#  Create a Script for Directory Cleanup:
- cd ./Security_Reports/
- ls -l | sort -k 5 -n
ls
cd ..

