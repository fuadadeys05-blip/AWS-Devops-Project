#!/bin/bash 
set -euxo pipefail 
dnf update -y 
dnf install -y httpd 
systemctl enable --now httpd 
cat > /var/www/html/index.html <<'HTML' 
<!doctype html><html lang="en"><head><meta charset="utf-8"><title>AWS DevOps</title></head> 
<body><h1>Welcome to my AWS DevOps Assignment</h1> 
<p>Student: YOUR_NAME</p><p>Role: Junior DevOps Engineer</p> 
<p>Module: Git, GitHub and AWS Cloud Infrastructure</p> 
<p>Deployed using EC2 User Data and CloudFormation.</p></body></html> 
HTML 
