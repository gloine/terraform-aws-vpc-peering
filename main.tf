terraform {
  required_version = ">= 0.12"
}

data "aws_caller_identity" "this" {
  provider = aws.us-east-1
}

locals {
  us-east-1 = var.us-east-1 != null
  us-east-2 = var.us-east-2 != null
  us-west-1 = var.us-west-1 != null
  us-west-2 = var.us-west-2 != null

  ap-east-1 = var.ap-east-1 != null
  ap-south-1 = var.ap-south-1 != null

  ap-northeast-2 = var.ap-northeast-2 != null
  ap-southeast-1 = var.ap-southeast-1 != null
  ap-southeast-2 = var.ap-southeast-2 != null
  ap-northeast-1 = var.ap-northeast-1 != null

  ca-central-1 = var.ca-central-1 != null

  eu-central-1 = var.eu-central-1 != null
  eu-west-1 = var.eu-west-1 != null
  eu-west-2 = var.eu-west-2 != null
  eu-west-3 = var.eu-west-3 != null
  eu-north-1 = var.eu-north-1 != null

  me-south-1 = var.me-south-1 != null

  sa-east-1 = var.sa-east-1 != null
}

// Any new region must be peered to all existing region.

provider "aws" {
  alias = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
}

provider "aws" {
  alias = "us-west-1"
}

provider "aws" {
  alias = "us-west-2"
}

provider "aws" {
  alias = "ap-east-1"
}

provider "aws" {
  alias = "ap-south-1"
}

provider "aws" {
  alias = "ap-northeast-2"
}

provider "aws" {
  alias = "ap-southeast-1"
}

provider "aws" {
  alias = "ap-southeast-2"
}

provider "aws" {
  alias = "ap-northeast-1"
}

provider "aws" {
  alias = "ca-central-1"
}

provider "aws" {
  alias = "eu-central-1"
}

provider "aws" {
  alias = "eu-west-1"
}

provider "aws" {
  alias = "eu-west-2"
}

provider "aws" {
  alias = "eu-west-3"
}

provider "aws" {
  alias = "eu-north-1"
}

provider "aws" {
  alias = "me-south-1"
}

provider "aws" {
  alias = "sa-east-1"
}
