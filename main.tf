terraform {
  backend "remote" {
    organization = "leonms"

    workspaces {
      name = "terraform-api"
    }
  }
}
