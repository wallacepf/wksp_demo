terraform {
  cloud {
    organization = "my-demo-account"
    hostname     = "app.terraform.io"
    workspaces {
      project = "wksp_demo"
      tags    = ["wksp_demo"]
    }
  }
}

locals {
  env       = var.environment == "prod" ? "prod" : "dev"
  workspace = terraform.workspace
}

output "env" {
  value = local.env
}

output "workspace" {
  value = local.workspace
}