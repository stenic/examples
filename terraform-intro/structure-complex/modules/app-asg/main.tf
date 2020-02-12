variable "ami" {
  type = string
}

variable "instance_count" {
  type = number
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = "t2.micro"
}