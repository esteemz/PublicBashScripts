#!/bin/bash

<<usage
chmod +x nmapscan.sh
./nmapscan.sh
usage

# Nmap scan bash script which scans IP and Port Range input below

# set the network range to scan
network="192.168.0.0/24"

# scan the network and save the output to a file
nmap -sP $network > nmap_scan_results.txt

# print the results to the terminal
cat nmap_scan_results.txt
