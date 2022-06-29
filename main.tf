terraform {
  cloud {
    organization = "leonms"

    workspaces {
      name = "terraform-api"
    }
  }
}

output "Test" {
  value = "Hello World!"
}
