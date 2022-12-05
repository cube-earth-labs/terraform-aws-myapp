provider "hcp" {}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  region  = var.region
  default_tags {
   tags = {
     environment = var.environment
     application = "MyApp"
     owner       = "Troy"
     costcenter  = "1234"
   }
 }
}