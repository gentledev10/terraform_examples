resource "aws_iam_user" "example" {
  name = "example"
}

resource "aws_s3_bucket" "example" {
  bucket = aws_iam_user.example.arn
}