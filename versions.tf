terraform {
  required_providers {
    terracurl = {
      source  = "devops-rob/terracurl"
      version = "1.2.1"
    }
    restapi = {
      source  = "Mastercard/restapi"
      version = "1.19.1"
    }
  }
}

provider "restapi" {
  uri                  = var.url
  write_returns_object = true
  debug                = true
  copy_keys            = ["key"]

  headers = {
    "Authorization" = "Bearer ${var.token}",
    "Content-Type"  = "application/json"
  }
}
