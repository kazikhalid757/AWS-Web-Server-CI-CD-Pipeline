#!/bin/bash 
sudo apt-get install ruby -y

sudo apt-get install ruby-full -y

export PATH=$PATH:/path/to/ruby/bin

https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install

chmod +x install

sudo ./install auto

sudo service codedeploy-agent status
