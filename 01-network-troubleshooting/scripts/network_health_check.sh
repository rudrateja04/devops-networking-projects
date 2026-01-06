#/bin/bash


LOGFILE="logs/network_check.log"

echo "==============================" >> $LOGFILE
echo "Network Health Check - $(date)" >> $LOGFILE
echo "==============================" >> $LOGFILE

ping -c 2 google.com &>/dev/null
if [ $? -eq 0 ]
then
	echo "Internet Connectivity: OK" >> $LOGFILE
else
	echo "Internet Connectivity: FAILED" >> $LOGFILE
fi

nslookup google.com &>/dev/null
if [ $? -eq 0 ]; then
  echo "DNS Resolution: OK" >> $LOGFILE
else
  echo "DNS Resolution: FAILED" >> $LOGFILE
fi
curl -s http://localhost &>/dev/null
if [ $? -eq 0 ]; then
  echo "Web Server (Nginx): RUNNING" >> $LOGFILE
else
  echo "Web Server (Nginx): DOWN" >> $LOGFILE
fi
echo "Listening Ports:" >> $LOGFILE
ss -tuln >> $LOGFILE
echo "" >> $LOGFILE


