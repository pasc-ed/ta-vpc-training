resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_public

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = var.cidr_private

  tags = {
    Name = "private"
  }
}

resource "aws_subnet" "data" {
  for_each = var.cidr_data

  vpc_id     = aws_vpc.lab_vpc.id
  cidr_block = each.value
  availability_zone = join("", [var.aws_region, each.key])

  tags = {
    Name = join("", ["data-", each.key])
  }
}