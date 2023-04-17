resource "aws_key_pair" "this" {
    public_key = var.keypair_public_key
}