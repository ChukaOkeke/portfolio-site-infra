# This Terraform configuration sets up a Cloudflare Pages project for deploying a portfolio site.
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

# Configure the Cloudflare provider with the API token and account ID
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

# Create a Cloudflare Pages project for the portfolio site
resource "cloudflare_pages_project" "portfolio" {
  account_id        = var.cloudflare_account_id
  name              = "chukaokeke"
  production_branch = "main"

  source {
    type = "github"
    config {
      owner                         = "ChukaOkeke"
      repo_name                     = "portfolio-site"
      production_branch             = "main"
      pr_comments_enabled           = true
      deployments_enabled           = true
    }
  }

  build_config {
    # Since yours is a simple static site, we leave these empty or default
    build_command   = "" 
    destination_dir = "" # Root directory
  }
}