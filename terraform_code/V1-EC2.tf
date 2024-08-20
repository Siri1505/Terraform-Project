provider "aws"{
    region = "eu-north-1"
}

resource "aws_instance" "demo-server"{
    ami = "ami-090abff6ae1141d7d"
    instance_type = "t3.micro"
    key_name = "ddp"
}