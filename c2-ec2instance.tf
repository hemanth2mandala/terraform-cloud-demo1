resource "aws_instance" "app-splunk" {
  ami                    = var.aws_ami_value
  instance_type          = var.aws_ec2_type
  key_name               = "mandalah"
  user_data              = file("apache-install.sh")
  count                  = 1
  vpc_security_group_ids = [aws_security_group.app-sg.id]


  tags = {
    "Name" = "splunk-vm-${count.index}"

  }


}
