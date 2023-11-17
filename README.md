# Create VPC using Github Actions as CI/CD

## VPC:
|Name|Value|
 ------------- | ------------- |
|VPC_cidr|10.0.0.0/6|
|region|us-east-1|
|availability zone|us-east-1a, us-east-1b|
|public subnet|10.0.1.0/24, 10.0.2.0/24|
|app subnet(private subnet)|10.0.4.0/24, 10.0.5.0/24|

- Deploy a terraform remote state backend with S3

## Github Action
- tfsec
- tflint
