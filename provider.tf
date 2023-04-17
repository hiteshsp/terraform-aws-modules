terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.63.0"
        }
    }
    backend "s3" {}
}

provider "aws" {
    alias = "dev"
}