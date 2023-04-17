resource "aws_subnet" "this" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.subnet_cidr

    tags = var.tags
}