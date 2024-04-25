output "instance" {
  value = tolist(data.aws_ssoadmin_instances.example.arns)[0]
}