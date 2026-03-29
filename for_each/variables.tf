variable "instances"{
    type=map
    default={
        mysql="t3.small"
        backend="t3.micro"
        frontend="t3.micro"
    }
}
variable "domain_name"{
    type=string
    default="daws82s.online"
}
variable "zone_id"{
    type=string
    default="Z0214488HJBJHBJHKVGB"
}