terraform {
  backend "s3" {
	bucket         = "82s-tf-remote-state-prod"
	key            = "expense-infra-prod"
	region         = "us-east-1"
	dynamodb_table = "82s-tf-remote-state-prod"
  }
}