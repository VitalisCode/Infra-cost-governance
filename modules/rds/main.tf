resource "aws_db_subnet_group" "this" {
  name = "${var.project_name}-${var.environment}"

  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.project_name}-${var.environment}-db-subnet-group"
  }
}

resource "aws_db_instance" "this" {
  identifier = "${var.project_name}-${var.environment}"

  engine         = "mysql"
  engine_version = var.engine_version

  instance_class = var.instance_class

  allocated_storage = 20
  storage_type      = "gp3"

  db_name  = var.database_name
  username = var.username

  manage_master_user_password = true

  port = 3306

  db_subnet_group_name = aws_db_subnet_group.this.name

  vpc_security_group_ids = var.security_group_ids

  publicly_accessible = false

  multi_az = false

  backup_retention_period = 1

  skip_final_snapshot = true

  deletion_protection = false

  apply_immediately = true

  tags = {
    Name = "${var.project_name}-${var.environment}-rds"
  }
}