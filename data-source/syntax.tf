data "aws_iam_user" "foo" {
  user_name = "foo_name"
}

resource "aws_iam_user" "bar" {
  name = "bar_name"
  path = data.aws_iam_user.foo.path
}