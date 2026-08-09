terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

resource "local_file" "server_config" {
  filename = "${path.module}/server_setup.txt"
  content  = "Server Environment Setup via Terraform for DevOps Pipeline"
}