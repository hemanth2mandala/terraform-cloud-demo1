variable "aws_region" {
  description = "Region of the resource being provisioned"
  type        = string

}


variable "aws_ami_value" {
  description = "AMI of VM"
  type        = string
  validation {
    condition     = length(var.aws_ami_value) > 4 && substr(var.aws_ami_value, 0, 4) == "ami-"
    error_message = "The aws_ami_value value must be a valid AMI id, starting with \"ami-\"."
  }

}



variable "aws_ec2_type" {
  description = "Instance type"
  type        = string


}