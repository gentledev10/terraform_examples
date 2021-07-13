variable "ingresses" {
  type = map(object({
    from_port = number
    to_port   = number
  }))
  default = {}
}

variable "egresses" {
  type = map(object({
    from_port = number
    to_port   = number
  }))
  default = {}
}