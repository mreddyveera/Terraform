locals {
    ami_id=data.aws_ami.joindevops.id
    instnace_type="t3.micro"
}