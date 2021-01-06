output "user_name" {
  value       = aws_iam_user.example.name
  description = "IAM user name"
}

output "user_arn" {
  value       = aws_iam_user.example.arn
  description = "IAM user arn"
}

output "custom_name" {
  value       = "custom-${aws_iam_user.example.name}"
  description = "IAM user custom name"
}

output "hello" {
  value       = "hello"
  description = "hello string"
}