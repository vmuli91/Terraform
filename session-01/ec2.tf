
resource "aws_instance" "test_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]

    # tags = {
    #     Name = "mongodb"
    #     Env = "Dev"
    #     Terraform = "true"
    #     Component = "mongodb"
    #     Project = "Roboshop"
    # }
    tags = var.tags
}