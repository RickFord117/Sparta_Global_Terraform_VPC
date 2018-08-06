provider "aws" {
  region = "eu-west-1"
}
# launch an aws instance
resource "aws_instance" "app_instance" {
  ami = "ami-019050f665f73b2da"
  instance_type = "t2.micro"
  tags {
    Name = "app-rick"
  }
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
