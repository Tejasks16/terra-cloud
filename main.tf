module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  monitoring             = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}