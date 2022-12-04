provider "aws" {
    region="us-east-1" 
}
variable "instance_type"{
    default=["t2.micro","t3.micro"]
    }
resource "aws_instance""main" {
    ami=var.ami[var.environment]
    instance_type=var.environment=="prod"?var.instance_type[0]:var.instance_type[1]
    key_name=var.key_name
      ebs_block_device{
     device_name="/dev/sdg"
        volume_type="gp2"
        volume_size=1
        delete_on_termination=false
  }
}
