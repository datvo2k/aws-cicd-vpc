# Common Variables

variable "name" {
  default     = "Default"
  type        = string
  description = "Name of the VPC"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}

variable "region" {
  type        = string
  description = "Region of the VPC"
}

# VPC Variables
variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

# Subnet Varaibles
variable "public_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}

variable "app_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of application subnet CIDR blocks"
}

variable "db_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of Database subnet CIDR blocks"
}

variable "management_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of management subnet CIDR blocks"
}

variable "platform_subnet_cidr_blocks" {
  type        = list(any)
  description = "List of platform subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["us-east-1a", "us-east-1b"]
  type        = list(any)
  description = "List of availability zones"
}

variable "create_nat_gateway" {
  type        = bool
  description = "whether to create a NAT gateway or not"
}

variable "enable_dns_support" {
  type        = bool
  description = "whether to enable DNS support or not"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "whether to enable DNS hostnames or not"
}

variable "domain" {
  type        = string
  description = "Set the domain of eip"
}

variable "owner" {
  type        = string
  description = "Name of owner"
}

variable "environment" {
  type        = string
  description = "The environment name for the resources."
}

variable "cost_center" {
  type        = string
  description = "Name of cost-center for this alb-asg"
}

variable "application" {
  type        = string
  description = "Name of the application"
}

variable "instance_tenancy" {
  type        = string
  description = "Set instance-tenancy"
}
