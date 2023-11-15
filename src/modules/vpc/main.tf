# VPC
resource "aws_vpc" "default" {
  cidr_block           = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-vpc",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}

# Internet-gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.default.id
  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-vpc",
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = var.application
    },
    var.tags
  )
}

# route-table


