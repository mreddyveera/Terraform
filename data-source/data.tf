data "aws_ami" "joindevops"{
    most_recent=true
    owners=["973714476881"]
    filter{
        name="name"
        values=["Redhat-9-DevOps-Practice"]
    }
    
}
data "aws_vpc" "default"{
    default=true
}
output "ami_id"{
    value=data.aws_ami.joindevops.id
}

output "vpc_id"{
    value=data.aws_vpc.default
}

