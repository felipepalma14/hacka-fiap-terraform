resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = var.private_subnets

  tags = {
    Name = "My DB subnet group"
  }
}

data "aws_security_group" "hackaton_sg" {
  name        = "hackaton-task-security-group"
}

resource "aws_db_instance" "default" {
  allocated_storage = var.allocated_storage
  storage_type = var.storage_type
  engine = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class
  db_name = var.name
  username = var.username
  password = var.password
  port = var.port
  identifier = var.identifier
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot = var.skip_final_snapshot
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [ data.aws_security_group.hackaton_sg.id ]
  
}
