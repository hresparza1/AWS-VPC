resource "aws_instance" "web" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.large"

 # the VPC subnet
  subnet_id = "${aws_subnet.main-public-1.id}"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.allow-ssh.id}"]
}