resource "aws_eip" "nat_eip" {
  vpc = true
}