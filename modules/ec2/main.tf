data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name = "name"
        values = [var.name_filter]
    }

    filter {
        name = "virtualization-type"
        values = [ var.virtualization_type ]
    }

    owners = [ var.ami_owner ]
}

resource "aws_instance" "this" {
    ami = data.aws_ami.ubuntu.id

    instance_type = var.instance_type
    key_name = aws_key_pair.this.key_name

    network_interface {
        network_interface_id = aws_network_interface.this.id
        device_index = 0
    }

    credit_specification {
        cpu_credits = "unlimited"
    }
    tags = var.tags
}