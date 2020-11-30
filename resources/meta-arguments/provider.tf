# default
provider "aws" {
  region = "us-east-1"
}

# alternate
provider "aws" {
  alias  = "seoul"
  region = "ap-northeast-2"
}

resource "aws_instance" "us-east-1" {
  ami           = "ami-example"
  instance_type = "t2.micro"
}

resource "aws_instance" "ap-northeast-2" {
  provider      = aws.seoul
  ami           = "ami-example"
  instance_type = "t2.micro"
}