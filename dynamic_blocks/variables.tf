variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "Id of devops-practrice AMI"
}

variable "instanceType" {
  type        = string
  default     = "t3.micro"
  description = "instaceType of the ec2 instace"
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Component   = "backend"
    Environment = "dev"
    Name        = "expense-backemnd"
  }

}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name = "Terra_form"
  }

}

variable "environment" {
  type    = string
  default = "dev"
}


variable "ingress_ports" {
  type = list(any)
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}
