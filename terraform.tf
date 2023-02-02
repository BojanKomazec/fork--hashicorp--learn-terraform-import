terraform {
  /* Uncomment this block to use Terraform Cloud for this tutorial
  cloud {
      organization = "organization-name"
      workspaces {
        name = "learn-terraform-import"
      }
  }
  */

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.17.0"
    }
  }

  required_version = "~> 1.2"
}
