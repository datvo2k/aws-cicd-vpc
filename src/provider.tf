terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }
  }
  backend "s3" {
    profile = "aws-dev"
    bucket  = "dev-terraform-33"
    region  = "us-east-1"
    key     = "backend.tfstate"

  }
}

provider "aws" {
  region  = var.region
  profile = "aws-dev"
}
