variable "ami_id"{
    default="ami-0220d79f3f480ecf5"
}
#Mandatory
variable "instance_type"{
    default="t3.micro"
}
variable "tags"{
    default={} #optional
}