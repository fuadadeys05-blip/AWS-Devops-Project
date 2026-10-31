# AWS-Devops-Project
This is my Git& GitHub + AWS Cloud Infrastructure project
# AWS DevOps Assignment 
## Overview 
Deploy a small Apache website on EC2 using CloudFormation. 
## Architecture 
See docs/architecture.md. Includes VPC, public subnet, IGW, route, security group, 
EC2, EBS, IAM role, private versioned S3 bucket, CloudWatch alarm and SNS. 
## Repository 
- website/: static page 
- scripts/: User Data script 
- cloudformation/: infrastructure template 
- docs/: architecture, security and troubleshooting 
- screenshots/: deployment evidence, with sensitive data removed 
## Prerequisites 
Authorized AWS account, Git, AWS CLI/CloudShell, current AMI ID for selected Region, 
student public IP/CIDR and email for SNS confirmation. 
## Deployment 
Validate and create the stack using the commands in the assignment solution. 
Open WebsiteURL in the CloudFormation outputs. 
## Security 
SSH limited to student IP; S3 public access blocked; EC2 uses an IAM role; 
no credentials are committed.
## Monitoring 
CloudWatch monitors EC2 CPU; SNS emails the confirmed subscriber. 
## Troubleshooting and cleanup 
See docs/troubleshooting.md. Delete the CloudFormation stack after saving evidence. 
# docs/security.md 
- TCP/22 is restricted to the student's public IPv4 /32. 
- TCP/80 is public for the demonstration website. 
- S3 Block Public Access and versioning are enabled; SSE-S3 encryption is configured. 
- EC2 uses a role/instance profile; no access keys are embedded in source or User Data. 
- Role permissions are limited to listing and reading the assignment bucket. 
- EBS root volume is encrypted and deleted on instance termination. 
- This is a lab architecture. Production needs further design for HTTPS, private subnets, 
 managed access, patching, backups, centralized logging and security review. 
# docs/troubleshooting.md 
## Incident 1 
- Symptom: 
- What changed: 
- Possible causes: 
- Smallest test: 
- Evidence / command output: 
- Root cause: 
- Fix: 
- Verification: 
- Prevention / lesson learned: 
## Incident 2 
- Symptom: 
- What changed: 
- Possible causes: 
- Smallest test: 
- Evidence / command output: 
- Root cause: 
- Fix: 
- Verification: 
- Prevention / lesson learned


