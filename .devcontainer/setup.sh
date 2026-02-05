#!/bin/bash

echo ✅ APT GET UPDATE
echo ✅ --------------
apt-get update -y

echo ✅ Install Jupyter notebook
echo ✅ ------------------------
# Install Jupyter notebook
apt-get install jupyter -y
apt-get clean packages

echo ✅ Install Jupyter Python kernel
echo ✅ -----------------------------
# Python Kernel
apt-get install python3-pymongo -y
apt-get clean packages

echo ✅ Install Node.js v23 
echo ✅ ----------------
# Install Node.js 23 as MongoDB MCP server needs at least v20 (https://github.com/mongodb-js/mongodb-mcp-server?tab=readme-ov-file#prerequisites)
npm install -g n
n 23
hash -r 
