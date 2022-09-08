terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }

  backend "s3" {
    bucket = "ganogsi-remote-state"
    key    = "aws-vpc-provider/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "ganogsi"
      managed-by = "terraform"
      region     = "eu-central-1"
    }
  }
}

provider "aws" {
  alias = "eua"
  region = "us-weast-1"

  default_tags {
    tags = {
      owner      = "ganogsi"
      managed-by = "terraform"
      region     = "us-weast-1"
    }
  }
}