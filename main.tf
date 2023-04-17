module "ec2" {
    source = "./modules/ec2"

    ami_owner = var.ami["ami_owner"]
    name_filter = var.ami["name_filter"]
    virtualization_type = var.ami["virtualization_type"]

    keypair_public_key = var.ssh_public_key
    instance_type = var.instance["instance_type"]
}