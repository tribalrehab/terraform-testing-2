variable aws_access_key_id{}
variable aws_secret_access_key{}

provider "aws" {
	access_key = var.aws_access_key_id
	secret_key = var.aws_secret_access_key
	region = "us-east-1"
}

resource "aws_instance" "my_ec2_instance" {
	ami = "ami-05912b6333beaa478"
	instance_type = "t2.micro"
	
	tags = {
		Name = "Windows Server"
		Environment = "Dev"
	}
}
