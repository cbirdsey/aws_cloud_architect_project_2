# Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "../credentials"
}


# Provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  subnet_id = "subnet-9189eaaf"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}


# Provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  ami = "ami-04d29b6f966df1537"
  instance_type = "m4.large"
  subnet_id = "subnet-9189eaaf"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}