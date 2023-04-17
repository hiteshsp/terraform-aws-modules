output "dns" {
    value = module.ec2.public_dns
}

output "key_name" {
    value = module.ec2.key_name
}