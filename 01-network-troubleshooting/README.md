# Network Troubleshooting Project

## Overview
This project simulates real-world network troubleshooting scenarios commonly handled by DevOps engineers.

## Problem Statement
A web application is not reachable. This project helps identify whether the issue is related to:
- Internet connectivity
- DNS resolution
- Web server availability
- Listening ports

## Solution
A bash script automates network health checks and logs the results for quick diagnosis.

## Checks Performed
- Internet connectivity using ping
- DNS resolution using nslookup
- Web server status using curl
- Open and listening ports using ss

## Tools Used
- Linux
- Bash scripting
- Nginx
- Networking commands (ping, curl, ss, nslookup)

## How to Run
```bash
chmod +x scripts/network_health_check.sh
./scripts/network_health_check.sh

