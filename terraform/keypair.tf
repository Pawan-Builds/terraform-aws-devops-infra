resource "aws_key_pair" "deployer" {
  key_name   = "terraform-ec2-key"
  public_key = file("/home/pawan/.ssh/terraform-ec2-key.pub")
}

