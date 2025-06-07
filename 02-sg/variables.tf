variable "common_tags" {
    type = map
    default = {
        Project = "Roboshop"
        Environment = "dev"
        Terraform = "true"
    }  
}

variable "sg_tags" {
    type = map
    default = {}  # it is optional
}

variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "mongodb_sg_ingress_rules" {
    default = [
    {
        description      = "Allow port 80"
        from_port        = 80 # 0 means all ports
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 443"
        from_port        = 443 # 0 means all ports
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 22"
        from_port        = 22# 0 means all ports
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 3306"
        from_port        = 3306# 0 means all ports
        to_port          = 3306
        protocol         = "tcp"
        cidr_blocks      = ["192.167.23.23/32"]
    }
    ]
}
