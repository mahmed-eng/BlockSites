# BlockSites  

## Overview  
This repository contains a batch script to block access to a list of anime streaming websites by editing the Windows `hosts` file. It prevents users from visiting the specified domains and also sets itself up to reapply the blocks after every restart.

## Features  
- Blocks a predefined list of anime websites.  
- Backs up the original `hosts` file for safety.  
- Ensures the DNS cache is refreshed after changes.  
- Automatically runs at system startup to maintain the blocks.  

## Usage  
1. Download the script or clone the repository.  
2. Right-click the script and run it as Administrator.  
3. Follow the prompts to apply the changes.  

## Prerequisites  
- Windows Operating System.  
- Administrative privileges.  

## Note  
- Ensure you back up your `hosts` file before running the script (a backup will be automatically created if not already present).  
- To remove the blocks, restore the `hosts.bak` file or remove the entries manually.  

## Disclaimer  
This script is intended for educational purposes. Use it responsibly.
