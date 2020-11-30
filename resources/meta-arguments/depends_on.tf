resource "aws_s3_bucket" "example" {
  bucket = "example"
}

resource "aws_instance" "example" {
  ami           = "ami-example"
  instance_type = "t2.micro"
  # 위에서 생성한 S3 에 파일을 push 하는 작업을 수행하는 user data
  user_data     = "...."

  depends_on = [
      aws_s3_bucket.example
  ]
}