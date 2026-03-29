resource "aws_instance" "Manikanta" {
  ami                    = var.ami_id
  instance_type          = var.environment == "prod" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.Manikanta.id]

  tags = var.ec2_tags

}

resource "aws_security_group" "Manikanta" {
  name = "Manikanta"
  dynamic "ingress" { #terraform will give u block name fir iteration
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value[from_port]
      to_port     = ingress.value[to_port]
      protocol    = ingress.value[protocol]
      cidr_blocks = ingress.value[cidr_blocks]

    }

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }
  tags = var.sg_tags
}
