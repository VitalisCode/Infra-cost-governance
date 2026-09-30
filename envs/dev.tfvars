aws_region   = "us-east-1"
environment  = "dev"
project_name = "infra-cost-governance"
owner        = "devops team"

vpc_cidr           = "10.20.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]

ecs_container_image = "public.ecr.aws/docker/library/nginx:alpine"
ecs_cpu             = 256
ecs_memory          = 512
ecs_desired_count   = 1

rds_instance_class = "db.t3.micro"
rds_engine_version = "8.0"
rds_database_name  = "appdb"
rds_username       = "admin"
