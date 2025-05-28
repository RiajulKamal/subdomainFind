#!/bin/bash

# Prompt the user for the main domain
read -p "Enter the main domain: " main_domain

# Run subfinder and save results to a.txt
subfinder -d $main_domain | tee a.txt

# Run sublist3r and save results to b.txt
sublist3r -d $main_domain | tee b.txt

# Run assetfinder and save results to c.txt
assetfinder -subs-only $main_domain | tee c.txt

# Merge and sort unique results from a.txt, b.txt, and c.txt into all.txt
cat a.txt b.txt c.txt | sort -u > all.txt

# Run httpx to check live domains from all.txt and save results to total.txt
httpx -l all.txt -o subdomainlist.txt

# Delete file
rm a.txt b.txt c.txt all.txt
