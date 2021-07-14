lifecycle_rules = {
  example1 = {
    expiration_days = 90
    transitions = [
      {
        days = 30
        storage_class = "STANDARD_IA"
      },
      {
        days = 60
        storage_class = "GLACIER"
      }
    ]
  },
  example2 = {
    expiration_days = 60
    transitions = []
  }
}