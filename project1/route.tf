resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name        = "main_igw"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name        = "public_route_table"
  }
}

resource "aws_route_table_association" "public_route_table_association_1" {
  subnet_id      = aws_subnet.subnet_public_1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_table_association_2" {
  subnet_id      = aws_subnet.subnet_public_2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_table_association_3" {
  subnet_id      = aws_subnet.subnet_public_3.id
  route_table_id = aws_route_table.public_route_table.id
}
