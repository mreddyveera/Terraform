variable "ami_id" {
    type=string
    default="ami-0220d79f3f480ecf5"
    description="Id of devops-practrice AMI"
}

variable "instanceType"{
    type=string
    default="t3.micro"
    description="instaceType of the ec2 instace"
}

variable "ec2_tags" {
    type=map
    default={
        Project="expense"
        Component="backend"
        Environment="dev"
        Name="expense-backemnd"
    }
  
}

variable "from_port" {
    type=number
    default=22
}

variable "to_port" {
    type=number
    default=22
}

variable "cidr_blocks" {
    type=list
    default=["0.0.0.0/0"]
}

variable "sg_tags" {
    type=map
    default={
        Name="Terra_form"
    }
  
}