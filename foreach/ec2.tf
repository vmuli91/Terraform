resource "aws_instance" "roboshop" {
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value
    tags = {
        Name = each.key
    }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"  #when combain variable with string, you keep seperate them
  type    = "A"
  ttl     = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ] 
  #if web, give public ip else give private ip
}
