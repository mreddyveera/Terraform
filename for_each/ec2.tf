resource "aws_instance" "Manikanta"{
    for_each=var.instances
    ami = "ami-0220d79f3f480ecf5"
    instance_type =each.value
    vpc_security_group_ids =[aws_security_group.Manikanta.id]

    tags={
        Name= each.key
    }

}

resource "aws_security_group" "Manikanta"{
    name="Manikanta"
    ingress{
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

output "ec2_info"{
    value=aws_instance.Manikanta
}