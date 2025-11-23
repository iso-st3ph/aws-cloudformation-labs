# Day 2 — Validation Steps (Public VPC + Web Server)

## 1. Deploy the CloudFormation template
Upload `template.yml` → Create Stack → Wait for CREATE_COMPLETE

## 2. Check Outputs
- `PublicIP`
- `WebsiteURL`

## 3. Validate Web Server
Open `http://PublicIP`

Expected:  
**Day 2 VPC Built with CloudFormation**

## 4. Cleanup
Delete the stack to avoid EC2 charges.
