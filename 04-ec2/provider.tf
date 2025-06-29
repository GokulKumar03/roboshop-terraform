terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }

  backend "s3" {
    bucket = "gokul-bucket-remote-state"
    key    = "ec2"
    region = "us-east-1"
    dynamodb_table = "gokul-bucket-remote-state-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}