output "splunk_vm_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.app-splunk.*.public_ip
}


# Attribute Reference - Create Public DNS URL
output "splunk_vm_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value = aws_instance.app-splunk.*.public_dns
}


