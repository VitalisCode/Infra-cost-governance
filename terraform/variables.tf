variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "infra-cost-governance"
}

variable "owner" {
  description = "Infrastructure owner"
  type        = string
  default     = "Vitalis-Ibekwe"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.20.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)

  default = [
    "us-east-1a",
    "us-east-1b"
  ]
}

variable "ecs_container_image" {
  description = "Container image used by ECS"
  type        = string
  default     = "public.ecr.aws/docker/library/nginx:alpine"
}

variable "ecs_cpu" {
  description = "Fargate CPU units"
  type        = number
  default     = 256
}

variable "ecs_memory" {
  description = "Fargate memory"
  type        = number
  default     = 512
}

variable "ecs_desired_count" {
  description = "Number of ECS tasks"
  type        = number
  default     = 1
}

variable "rds_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_engine_version" {
  description = "MySQL engine version"
  type        = string
  default     = "8.0"
}

variable "rds_database_name" {
  description = "Database name"
  type        = string
  default     = "appdb"
}

variable "rds_username" {
  description = "RDS master username"
  type        = string
  default     = "admin"
}

