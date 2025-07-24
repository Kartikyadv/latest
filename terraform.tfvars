region                = "ap-south-1"
ami                   = "ami-001d198b1662bb7dd"
instance_type         = "t3.medium"
subnet_id             = "subnet-0e9ae471d8daa03d4"
key_name              = "demo-keypair"

vpc_security_group_rules = {
  ingress_ssh = {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}