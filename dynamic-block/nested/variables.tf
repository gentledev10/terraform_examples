variable "lifecycle_rules" {
  type = map(object({
    expiration_days = number
    transitions     = list(object({
      days          = number
      storage_class = string
    }))
  }))
}