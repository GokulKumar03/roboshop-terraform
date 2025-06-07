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

variable "sg_name" {
}
