resource "aws_instance" "example1" {
  ami           = "ami-example"
  instance_type = "t2.micro"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_instance" "example2" {
  ami           = "ami-example"
  instance_type = "t2.micro"
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_instance" "example3" {
  ami           = "ami-example"
  instance_type = "t2.micro"
  tags          = {
    name = "example3"
  }
  lifecycle {
    ignore_changes = [
      instance_type,
      tags
    ]
  }
}

resource "aws_instance" "example4" {
  ami           = "ami-example"
  instance_type = "t2.micro"
  lifecycle {
    ignore_changes = all
  }
}