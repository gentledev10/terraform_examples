variable "iam_user_name" {
  type        = string
  default     = "iam-user-name"
  description = "IAM user name"

  validation {
    condition     = length(var.iam_user_name) > 5 && substr(var.iam_user_name, 0, 4) == "iam-"
    error_message = "IAM user name must be longer than 5 characters and starting with \"iam-\"."
  }
}