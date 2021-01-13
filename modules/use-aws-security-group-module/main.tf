module "example_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.17.0"

  name   = "example-sg"
  vpc_id = "vpc-xxxxxxxx"

  ingress_cidr_blocks = ["0.0.0.0/32"]
}