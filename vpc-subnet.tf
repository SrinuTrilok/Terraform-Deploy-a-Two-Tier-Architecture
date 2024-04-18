# Create a VPC
resource "aws_vpc" "TF-Demo" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "TF-Demo"
  }
}

# Create 2 Public Subnets
resource "aws_subnet" "public_subnetTF-Demo" {
  vpc_id            = aws_vpc.TF-Demo.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "public subnet TF-Demo"
  }
}

resource "aws_subnet" "public_subnetTF-Demo" {
  vpc_id            = aws_vpc.TF-Demo.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "public subnet TF-Demo"
  }
}


# Create 2 Private Subnets
resource "aws_subnet" "private_subnetTF-Demo" {
  vpc_id                  = aws_vpc.TF-Demo.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "private subnet TF-Demo"
  }
}
resource "aws_subnet" "private_subnetTF-Demo" {
  vpc_id                  = aws_vpc.TF-Demo.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "private subnet TF-Demo"
  }
}
