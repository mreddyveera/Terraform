resource "aws_instance" "Manikanta"{
    ami = var.ami_id
    instance_type =var.instanceType
    vpc_security_group_ids =[aws_security_group.Manikanta.id]

    tags=var.ec2_tags

}

resource "aws_security_group" "Manikanta"{
    name="Manikanta"
    ingress{
        from_port=var.from_port
        to_port=var.to_port
        protocol="tcp"
        cidr_blocks=var.cidr_blocks
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }
    tags=var.sg_tags
}