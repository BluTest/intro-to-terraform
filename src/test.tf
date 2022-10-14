resource "aws_db_instance" "mysql" {
  name                 = "test-mysql"
  allocated_storage    = 100
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = var.rds_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
