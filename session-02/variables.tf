variable "ami_id" {
    type = string  #this is data type
    default = "ami-0b4f379183e5706b9" #this is default value
}

variable "instance_name" {
    type = string    #mostly we dont need to provide type, terraform itself can understand
    default = "catalogue"         
}