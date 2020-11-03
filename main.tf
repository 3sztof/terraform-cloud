provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = var.ami
    instance_type = "t2.micro"
    tags {
        Name = "ecc2-instance"
    }
}