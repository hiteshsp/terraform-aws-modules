resource "aws_network_interface" "this" {
    subnet_id = aws_subnet.this.id
    private_ips = [var.nic_private_ips]
    security_groups = [ aws_security_group.this.id ]
}