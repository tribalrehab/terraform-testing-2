resource "aws_instance" "my_ec2_instance" {
	ami = "ami-05912b6333beaa478"
	instance_type = "t2.micro"
	
	tags = {
		Name = "Windows Server"
		Environment = "Dev"
	}
}
