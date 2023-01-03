#!/bin/bash

<<usage
chmod +x nmapscan2.sh
./nmapscan2.sh
usage

# Nmap scan bash script which asks user to input IP and Port Range

# Ask user for target IP Address:
read -p "Enter the target IP Address: " target

# Ask user for Port Range:
read -p "Enter the Port Range(example: 1-9987): " port_range

# Scan the target IP address for the specified port range
nmap -p $port_range $target
