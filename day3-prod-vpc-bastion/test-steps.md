# Day 3 — Validation Steps (Prod VPC + Bastion + Private EC2)

## 1. Deploy the CloudFormation template
Use Parameters:
- KeyPairName = your key name
- MyIpCidr = your public IP/32

## 2. SSH into the Bastion Host

## 3. SSH from Bastion into Private EC2
Find Private Instance private IP:

## 4. Validate NAT Gateway outbound access
On private EC2:
curl https://checkip.amazonaws.com

curl -I https://amazon.com

Expected: outbound internet succeeds.

## 5. Cleanup
Delete stack ASAP to avoid NAT Gateway charges.
