resource "aws_instance" "public_ec2" {
  count                       = "${length(var.subnet_cidr)}"
  ami                         = var.ami_id
  key_name                    = var.key_name
  instance_type               = "t2.micro"
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  subnet_id                   = element(aws_subnet.public_subnet.*.id, count.index)
  associate_public_ip_address = true


  tags = {
    Name = "${var.vpc_name}-ec2-${count.index}"
  }
}