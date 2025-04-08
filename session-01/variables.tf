variable "ami_id" {
    type = string  #this is data type
    default = "ami-0b4f379183e5706b9" #this is default value
}

variable "instance_type" {
    type = string    #mostly we dont need to provide type, terraform itself can understand
    default = "t2.micro"         
}

variable "sg_name" {
    type = string
    default = "allow-all"
}

variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        Name = "mongodb"
        Env = "Dev"
        Terraform = "true"
        Component = "mongodb"
        Project = "Roboshop"
    }
}