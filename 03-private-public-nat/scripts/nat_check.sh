#!/bin/bash

OUTPUT_FILE="../docs/nat-output.txt"

echo "===== NAT Demonstration Output =====" > $OUTPUT_FILE
echo "Date: $(date)" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Command Executed:" >> $OUTPUT_FILE
echo "./nat_check.sh" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Private IP(s) on this machine:" >> $OUTPUT_FILE
ip a | grep inet | grep -v 127.0.0.1 >> $OUTPUT_FILE

echo "" >> $OUTPUT_FILE
echo "Public IP seen by the internet:" >> $OUTPUT_FILE
curl -s ifconfig.me >> $OUTPUT_FILE

echo "" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "Conclusion:" >> $OUTPUT_FILE
echo "Outbound traffic from a private IP is translated to a public IP using NAT." >> $OUTPUT_FILE

echo "Output written to docs/nat-output.txt"


