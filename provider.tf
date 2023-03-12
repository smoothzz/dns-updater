terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "smoothz"

    workspaces {
      name = "smoothz"
    }
  }
  required_providers {
    external = {
      source = "hashicorp/external"
      version = "2.3.1"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "4.1.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.api_token
}

provider "external" {}