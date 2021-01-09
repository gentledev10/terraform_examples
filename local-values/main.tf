locals {
  date        = "2021.01.09"
  common_tags = {
    group   = "developer"
    created = local.date
  }
}

resource "aws_iam_user" "example1" {
  name = "test1"
  tags = local.common_tags
}

resource "aws_iam_user" "example2" {
  name = "test2"
  tags = local.common_tags
}
