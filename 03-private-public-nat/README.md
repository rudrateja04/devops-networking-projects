# Private vs Public Networking – NAT Concept

## Overview
This project explains how systems with **private IP addresses** are able to access the internet using **Network Address Translation (NAT)** while remaining inaccessible from the internet.

This is a **concept-driven DevOps networking project** focused on understanding real-world cloud networking behavior.

---

## Public IP vs Private IP

### Public IP
- Globally unique
- Reachable from the internet
- Assigned by ISP or cloud provider

Used for:
- Web servers
- Load balancers
- Bastion hosts

---

### Private IP
- Used inside internal networks
- Not reachable directly from the internet

Common private IP ranges:
- `10.0.0.0/8`
- `172.16.0.0/12`
- `192.168.0.0/16`

Used for:
- Databases
- Internal services
- Backend applications

---

## What is NAT?
**NAT (Network Address Translation)** allows systems with private IP addresses to access the internet by translating private IPs into a public IP for outbound traffic.

### NAT behavior:
- Outbound traffic: ✅ Allowed
- Inbound traffic: ❌ Blocked (unless explicitly configured)

This provides both **connectivity** and **security**.

---

## Local Demonstration
This project demonstrates NAT behavior using a local system.

### Commands used:
```bash
ip a

