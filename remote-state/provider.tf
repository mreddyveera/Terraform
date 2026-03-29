terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "manikanta-terraform-remote-state"
    key    = "expense-backend-infra"  #shouid be unique keys
    region = "eu-north-1"
    use_lockfile=true
    #dynamodb_table = "Manikanta-dynamodb"
  }
}


# Configure the AWS Provider
provider "aws"{
  region= "us-east-1"
}