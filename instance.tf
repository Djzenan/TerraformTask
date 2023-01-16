resource "aws_instance" "myinstance" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  key_name                    = "bastion-key"
  vpc_security_group_ids      = [aws_security_group.securitygroup.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash
    yum install httpd -y
    service httpd start
    chkconfig httpd on
    echo "Hello, world" > /var/www/html/index.html
  EOF

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Dzenan_Mahalbasic"
  }
}
resource "aws_instance" "myinstance2" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  key_name                    = "bastion-key"
  vpc_security_group_ids      = [aws_security_group.securitygroup.id]
  subnet_id                   = aws_subnet.public-subnet2.id
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash
    yum install httpd -y
    service httpd start
    chkconfig httpd on
    echo "Hello, world" > /var/www/html/index.html
  EOF

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Dzenan_Mahalbasic"
  }
}
resource "aws_instance" "myinstance3" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  key_name                    = "bastion-key"
  vpc_security_group_ids      = [aws_security_group.securitygroup.id]
  subnet_id                   = aws_subnet.public-subnet3.id
  associate_public_ip_address = true
  user_data                   = <<EOF
    #!/bin/bash
    yum install httpd -y
    service httpd start
    chkconfig httpd on
    echo "Hello, world" > /var/www/html/index.html
  EOF

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Dzenan_Mahalbasic"
  }
}