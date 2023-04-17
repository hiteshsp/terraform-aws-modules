variable "ami_owner" {
    type = string
    description = "AMI Owner"
    default = ""
}

variable "name_filter" {
    type = string
    description = "AWS EC2 AMI name filter"
    default = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
}

variable "virtualization_type" {
    type = string
    description = "EC2 Virtualization Type"
    default = "hvm" 
}


variable "instance_type" {
    type = string
    description = "AWS instance type"
    default = "t3.medium"
}

variable "tags" {
    type = map(string)
    description = "AWS EC2 Tags"
    default = {
        "name" = "main"
    }
}

variable "vpc_cidr" {
    type = string
    description = "AWS VPC CIDR"
    default = "10.0.0.0/16"
}

variable "vpc_instance_tenancy" {
    type = string
    description = "AWS VPC instance tenancy"
    default = "default"
}

variable "subnet_cidr" {
    type = string
    description = "AWS Subnet CIDR"
    default = "10.0.0.0/24"
}

variable "nic_private_ips" {
    type = string
    description = "AWS Network Interface Private IPs"
    default = "10.0.0.50"
}

variable "keypair_public_key" {
    type = string
    description = "AWS Key Pair public key"
    default = ""
}