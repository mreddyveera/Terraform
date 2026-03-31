terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
terraform{
 backend "s3"{
    bucket="82s-tf-remote-state"
    key="module-demo"
    region="us-east-1"
    dynamodb_table="82s-state-locking"
}
}

# Configure the AWS Provider
provider "aws"{
  region= "us-east-1"
}