terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.85.0"
    }
  }
}

provider "proxmox" {
  endpoint  = var.virtual_environment_endpoint
  api_token = var.virtual_environment_token
  ssh {
    agent       = false
    username    = "root"
    private_key = file("~/.ssh/id_rsa")

    node {
      name    = "proxmox-4"
      address = "192.168.0.4"
    }
  }
}
