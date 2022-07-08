provider "hcp" {}

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