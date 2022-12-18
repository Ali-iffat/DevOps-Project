data "aws_ami_ids" "ubuntu" {
  owners = ["477287675722"]


  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-2022120"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  key_name = "euran-jenkins"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}
