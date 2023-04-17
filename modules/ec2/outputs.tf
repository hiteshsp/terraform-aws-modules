output "public_dns" {
    value = aws_instance.this.public_dns
}

output "key_name" {
    value = aws_instance.this.key_name
}