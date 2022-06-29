# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "leonms"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "terraform_deployment"
    }
  }
}

credentials "app.terraform.io" {
  token = " $secrets.GOOGLE_CREDENTIALS "
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
