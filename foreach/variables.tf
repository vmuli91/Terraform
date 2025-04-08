variable "ami_id" {
    type = string  #this is data type
    default = "ami-0b4f379183e5706b9" #this is default value
}

variable "instances" {
    type = map
    default = {
        MongoDB = "t3.medium"  #each.key = each.value
        MySQL = "t3.medium"
        Redis = "t2.micro"
        RabbitMQ = "t2.micro"
        Catalogue = "t2.micro"
        User = "t2.micro"
        Cart = "t2.micro"
        Shipping = "t2.micro"
        Payment = "t2.micro"
        Web = "t2.micro"
    }
}

variable "zone_id" {
    default = "Z0054923J2O4K3M5H15Y"
}

variable "domain" {
    default = "masterdevops.site"
}
