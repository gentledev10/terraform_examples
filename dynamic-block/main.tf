terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.49.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "example" {
  name   = "dynamic_example"
  vpc_id = aws_vpc.example.id

  dynamic "ingress" {
    for_each = var.ingresses
    iterator = ing
    content {
      description = "${ing.key} description"
      from_port   = ing.value["from_port"]
      to_port     = ing.value["to_port"]
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.egresses
    content {
      description = "${egress.key} description"
      from_port   = egress.value["from_port"]
      to_port     = egress.value["to_port"]
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}