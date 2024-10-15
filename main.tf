terraform {
  backend "s3" {
    bucket = "wrkspc-migration-demo"
    key    = "states/terraform.tfstate"
    region = "us-east-1"
  }
}

locals {
  env = var.environment == "prod" ? "prod" : "dev"
  workspace = terraform.workspace
}

output "env" {
  value = local.env
}

output "workspace" {
  value = local.workspace
}