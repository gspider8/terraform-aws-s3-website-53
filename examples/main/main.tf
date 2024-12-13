terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

variable "domain_name" { default = "domain.test" }

module "s3-static-website" {
  source = "../../"
  domain_name = var.domain_name
  _create_r53_zone = true
}