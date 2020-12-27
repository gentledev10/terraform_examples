variable "iam_user_count" {
  type        = number
  description = "IAM user count"

  validation {
    condition     = var.iam_user_count < 5
    error_message = "IAM user count must be less than 5."
  }
}

variable "iam_user_name" {
  type        = string
  default     = "iam-user-name"
  description = "IAM user name"

  validation {
    condition     = length(var.iam_user_name) > 5 && substr(var.iam_user_name, 0, 4) == "iam-"
    error_message = "IAM user name must be longer than 5 characters and starting with \"iam-\"."
  }
}