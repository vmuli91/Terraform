variable "ami_id" {
    type = string  #this is data type
    default = "ami-0b4f379183e5706b9" #this is default value
}

variable "instance_names" {
    type = list   #mostly we dont need to provide type, terraform itself can understand
    default = ["MongoDB", "Cart", "Catalogue", "User", "Redis", "MySQL", "RabbitMQ", "Shipping", "Payment", "Web"]        
}

variable "zone_id" {
    type = string
    default = "Z0054923J2O4K3M5H15Y"
}

variable "Domain" {
    type = string
    default = "masterdevops.site"
}