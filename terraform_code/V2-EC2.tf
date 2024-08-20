provider "aws"{
    region = "eu-north-1"
}

resource "aws_instance" "demo-server"{
    ami = "ami-090abff6ae1141d7d"
    instance_type = "t3.micro"
    key_name = "ddp"
}

resource "aws_security_group" "demo-ssh" {
  name        = "demo-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-port"
  }
}