provider "aws" {
  alias = "first"
}

provider "aws" {
  alias = "second"
}

resource "aws_security_group" "first" {
  provider = aws.first
  name     = "first"
}

resource "aws_security_group" "second" {
  provider = aws.second
  name     = "second"
}