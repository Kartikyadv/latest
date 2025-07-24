variable "terraform_version" {
  default = "~> 1.2.9"
}

provider "aws" {
  version = terraform_version
}