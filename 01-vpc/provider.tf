terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }

  backend "s3" {
    bucket = "gokul-bucket-remote-state"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "gokul-bucket-remote-state-locking"
    use_lockfile = true

  }
}

provider "aws" {
  region = "us-east-1"
}