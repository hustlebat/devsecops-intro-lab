#!/bin/bash

# Update package list
apt-get update

# Install Python and pip
apt-get install -y python3 python3-pip

# Create an insecure Python script
cat <<EOF > insecure_code.py
import subprocess
def insecure_code(user_input):
    subprocess.call('echo ' + user_input, shell=True)
EOF
