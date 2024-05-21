provider "aws" {
  region = "us-east-1"
  
}

resource "aws_security_group" "yolo_security_group" {
  name        = "yolo_security_group"
  description = "Security group for YOLO application"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
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
    Name = "yolo-security-group"
  }
}

resource "aws_instance" "yolo_server" {
  ami             = "ami-0cd59ecaf368e5ccf"
  security_groups = [aws_security_group.yolo_security_group.name]
  instance_type = "t2.micro"

  tags = {
    Name = "YOLO Server"
  }
}
