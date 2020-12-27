resource "aws_iam_user" "example" {
  count = var.iam_user_count
  name  = "${var.iam_user_name}-${count.index}"
}