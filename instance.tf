# Define an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0e2c8caa4b6378d8c" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"             # Replace with your desired instance type

  key_name      = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_sg.name]

  tags = {
    Name = "my-web-instance"
  }
}
