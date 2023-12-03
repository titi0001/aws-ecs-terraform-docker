terraform {
  backend "s3" {
    bucket = "terraform-docker-alura"
    key    = "Prod/terraform.tfstate"
    region = "us-west-2"
  }
}
