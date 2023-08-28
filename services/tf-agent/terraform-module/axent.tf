terraform {
  required_providers {
    axent = {
      version = "~> 1.0.0"
      source  = "terraform-axent.com/axentprovider/axent"
    }
  }
}


resource "axent_release" "example" {
  name = "axent_release"
}
