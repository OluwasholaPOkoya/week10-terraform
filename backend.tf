terraform {
  backend "s3" {
    bucket = "sholaterrabucket"
    key    = "week10statefile/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "Terraformlock"
  }
}
