#vpc
region               = "us-west-1"
vpc_cidr_block       = "10.0.0.0/16"
instance_tenancy     = "default"
enable_dns_support   = true
enable_dns_hostnames = true

#elastic ip
domain = "vpc"

#nat-gateway
create_nat_gateway = false

#route-table
destination_cidr_block = "0.0.0.0/0"

#subnet
map_public_ip_on_launch       = true
public_subnet_cidr_blocks     = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones            = ["us-west-2a", "us-west-2b"]

#NACL
#public nacl
ingress_public_nacl_rule_no    = [100]
ingress_public_nacl_action     = ["allow"]
ingress_public_nacl_from_port  = [0]
ingress_public_nacl_to_port    = [0]
ingress_public_nacl_protocol   = ["-1"]
ingress_public_nacl_cidr_block = ["0.0.0.0/0"]

egress_public_nacl_rule_no    = [200]
egress_public_nacl_action     = ["allow"]
egress_public_nacl_from_port  = [0]
egress_public_nacl_to_port    = [0]
egress_public_nacl_protocol   = ["-1"]
egress_public_nacl_cidr_block = ["0.0.0.0/0"]

#tags
owner       = "BrianVo"
environment = "dev"
cost_center = "BrianVo"
application = "vpc"