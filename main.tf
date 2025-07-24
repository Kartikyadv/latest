provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-001d198b1662bb7dd"
  instance_type = "t3.medium"
  subnet_id     = "subnet-0e9ae471d8daa03d4"
  key_name      = "demo-keypair"

  vpc_security_group_ids = [
    aws_security_group.example.id
  ]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
}