resource "aws_s3_bucket" "my_s3" {
    bucket = "terraformondockerawss3bucket"
  
}

resource "aws_instance" "My_ec2" {
    ami = "ami-0aa117785d1c1bfe5"
    instance_type = "t2.micro"
    key_name = "marvel"
    tags = {
      Name = "Terraform_On_Docker"
    }
  
}