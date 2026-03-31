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
    bucket="manikanta-demo-remote"
    key="module-demo"
    region="us-east-1"
    dynamodb_table="Manikanta-dynamodb"
}
}

# Configure the AWS Provider
provider "aws"{
  region= "us-east-1"
}