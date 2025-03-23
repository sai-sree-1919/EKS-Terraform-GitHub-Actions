terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "sreekanth-s3-demo-xyz"
    region         = "ap-south-1"
    key            = "saisree/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    use_lockfile        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
