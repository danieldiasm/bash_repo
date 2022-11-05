#! /usr/bin/bash
# Author: Daniel ZDM- L3Chevalier
# 5th Nov 2022

# Zabbyx Installer on Raspian OS (Bullseye)
# [] - Install Zabbix repository
# [] - Install Zabbix server, frontend, agent
# [] - Create initial database
# [] - Configure the database for Zabbix server
# [] - Configure PHP for Zabbix frontend
# [] - Start Zabbix server and agent processes
# [] - Final message ending installation

echo "- Zabbyx Installer -"
echo ""
echo ""
echo "-= Adding repository =-"
echo ""
sudo wget https://repo.zabbix.com/zabbix/6.2/raspbian/pool/main/z/zabbix-release/zabbix-release_6.2-3%2Bdebian11_all.deb
sudo dpkg -i zabbix-release_6.2-3+debian11_all.deb
sudo apt-get update

echo ""
echo "-= Installing Zabbix Server, Frontend and Agent =-"
echo ""
sudo apt-get install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent

