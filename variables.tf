variable "ssh_public_key" {
    type = string
    description = "AWS SSH public key"
    default = ""
}

variable "ami" {
    type = map(string)
    description = "AWS AMI information"
    default = {
        ami_owner = ""
        name_filter = ""
        virtualization_type = ""
    }
}

variable "instance" {
    type = map(string)
    description = "AWS EC2 Instance"
    default = {
        instance_type = ""
    }
}