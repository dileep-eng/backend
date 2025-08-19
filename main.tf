resource "aws_instance" "protected_instance" {
  ami                         = "ami-0861f4e788f5069dd"           # Your custom AMI
  instance_type               = "t2.micro"                        # Change as needed
  subnet_id                   = "subnet-0f6f4c8ac36b22bf2"        # Existing subnet
  vpc_security_group_ids      = ["sg-0c371632d6ee81959"]          # Existing security group
  associate_public_ip_address = true                              # Enable if needed
  disable_api_termination     = true                              # Enable termination protection
  disable_api_stop            = true                              # Enable stop protection

  tags = {
    Name = "Protected-EC2"
  }
}