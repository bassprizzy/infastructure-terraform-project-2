terraform {
  backend "s3" {
    bucket       = "terraform-learning-dev-terraform-state"
    key          = "terraform.tfstate"
    region       = "eu-north-1"
    use_lockfile = true
  }
}