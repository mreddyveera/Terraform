# resource "aws_instance" "this"{

# }

resource "aws_security_group" "allow_tls"{
    name="allow_tls"
    description="Allow TLS inbound traffic and all outbound traffics"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    tags={
        Name="allow_tls"
    }
}