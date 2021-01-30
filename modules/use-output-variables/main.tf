module "security_group" {
  source = "./module"
}

resource "aws_security_group" "example" {
  name = "new-${module.security_group.name}"
}