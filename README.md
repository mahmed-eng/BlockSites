# Repository Name: Block Sites

# Description:
A batch script to block anime websites by modifying the hosts file on a Windows system. It includes functionality for setting the script to run automatically at startup, ensuring that the changes persist after a reboot.

# Repository Content

# Script File:
The script file should be named AnyName.bat(Put any name with .bat extension)

# README.md:

This repository contains a batch script to block access to specified websites by modifying the hosts file in Windows. It is particularly designed to block popular anime streaming websites.

# Features
1. Blocks specified websites by redirecting their domains to 127.0.0.1.
2. Creates a backup of the original hosts file for safety.
3. Automatically sets the script to run at startup to ensure persistence.
4. Flushes DNS cache to apply changes immediately.

# Usage Instructions
## Step 1: Download and Run
### Download the BlockAnimeSites.bat script from this repository.
### Right-click on the script and select Run as Administrator.
### Administrator privileges are required to modify the hosts file.

# Step 2: Backup Hosts File
### The script automatically creates a backup of the hosts file at:
### C:\Windows\System32\drivers\etc\hosts.bak

## Step 3: Block Websites
### The script appends the domains of the specified websites to the hosts file, effectively blocking access to them.

## Step 4: Auto-run at Startup
### The script sets itself to autorun at startup by adding an entry in the Windows Registry. This ensures that the websites remain blocked even after a reboot.

# How to Confirm Auto-run Setup
### Press Win + R, type regedit, and press Enter to open the Registry Editor.

## Navigate to:
### 1. HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
### 2. Look for an entry named BlockAnimeSites. It should point to the script's file path.
### 3. Manually Adding the Script to Startup

## If you need to manually add the script to startup:
### 1. Press Win + R, type shell:startup, and press Enter.
### 2. Copy the BlockAnimeSites.bat file into the opened folder.

## To Revert Changes:
### If you want to unblock the websites:

## Restore the original hosts file:
1. Copy C:\Windows\System32\drivers\etc\hosts.bak C:\Windows\System32\drivers\etc\hosts
2. Remove the registry entry for autorun:
3. Open Registry Editor (regedit).

## Navigate to:
1. HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
2. Delete the BlockAnimeSites entry.

# Caution
1. Ensure you have administrative privileges to run the script.
2. Modify the script responsibly and avoid adding domains that you don’t own or have no legal reason to block.
Let me know if you need further help setting up the repository
