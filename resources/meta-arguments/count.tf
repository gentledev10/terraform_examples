resource "aws_iam_user" "example" {
  count = 3
  name  = "example_${count.index}"
}