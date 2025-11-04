provider "aws" {
    region = "ap-southeast-1"
    profile = "terraform-user" 
}

terraform {
  backend "s3" {
   bucket = "vpc-resource-bucket-tf-state"
   key    = "vpc-resource-bucket-tf-state.tfstate"
    region = "ap-southeast-1"
    profile = "terraform-user"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.70.0"
    }
  }
}