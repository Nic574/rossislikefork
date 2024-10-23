resource "aws_route_table" "private_rtb" {
  vpc_id = aws_vpc.app1.id

  route {
    cidr_block                 = "0.0.0.0/0"
    nat_gateway_id             = aws_nat_gateway.nat.id
  }
  tags = {
    Name = "private_rtb"
  }
}

resource "aws_route_table" "public_rtb" {
  vpc_id = aws_vpc.app1.id

  route {
    cidr_block                 = "0.0.0.0/0"
    gateway_id                 = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public_rtb"
  }
}

resource "aws_route_table_association" "private_subnet_1a_rtb_assoc" {
  subnet_id      = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.private_rtb.id
}

resource "aws_route_table_association" "private_subnet_1b_rtb_assoc" {
  subnet_id      = aws_subnet.private_subnet_1b.id
  route_table_id = aws_route_table.private_rtb.id
}
resource "aws_route_table_association" "private_subnet_1c_rtb_assoc" {
  subnet_id      = aws_subnet.private_subnet_1c.id
  route_table_id = aws_route_table.private_rtb.id
}


#public

resource "aws_route_table_association" "public_subnet_1a_rtb_assoc" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_rtb.id
}

resource "aws_route_table_association" "public_subnet_1b_rtb_assoc" {
  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public_rtb.id
}

resource "aws_route_table_association" "public_subnet_1c_rtb_assoc" {
  subnet_id      = aws_subnet.public_subnet_1c.id
  route_table_id = aws_route_table.public_rtb.id
}
