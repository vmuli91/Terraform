# resource "aws_instance" "conditions" {
#     count = 10
#     ami = locals.ami_id
#     instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "MySQL" ? "t3.micro" : "t2.micro"
#     tags = {
#       Name = var.instance_names[count.index]
#     }
# }

# resource "aws_route53_record" "record" {
#   count = 10
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.Domain}" 
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.conditions[count.index].public_ip]
# }

resource "aws_key_pair" "deployer" {
  key_name   = "Devops"
  public_key = local.key_public
}

resource "aws_instance" "file-functions" {
    ami = local.ami_id
    instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
}