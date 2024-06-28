#!/bin/bash
cd /home/ec2-user/dashboard
sudo chown -R ec2-user:ec2-user /home/ec2-user/dashboard/*
sudo chmod +x /home/ec2-user/dashboard/scripts/*
npm cache clean --force
rm -rf node_modules package-lock.json
npm install