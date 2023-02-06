# Using a single workspace:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aws-arch"

    workspaces {
      name = "01-lab7-vpc"
    }
  }
}