#These are   for  public

resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.9.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public_subnet_1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.9.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public_subnet_1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "public_subnet_1c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.9.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public_subnet_1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private_subnet_1a" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.9.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "private_subnet_1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.9.12.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "private_subnet_1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "private_subnet_1c" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.9.13.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private_subnet_1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
