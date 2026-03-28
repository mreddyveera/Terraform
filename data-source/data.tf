data "aws_ami" "Manikanta"{
    most_recent=true
    owners=["217248977811"]
    filter{
        name="name"
        values=["RHEL-9-DevOps-Practice"]
    }
    filter{
        name="root-device-type"
        values=["ebs"]
    }
    filter{
        name="virtualization-type"
        values=["hvm"]
    }
}
output "ami_id"{
    value=data.aws_ami.Manikanta.id
}