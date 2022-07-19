resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_public

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "data" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_data

  tags = {
    Name = "data"
  }
}