variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "container_image" {
  type = string
}

variable "cpu" {
  type = number
}

variable "memory" {
  type = number
}

variable "desired_count" {
  type = number
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "security_group_ids" {
  type = list(string)
}

variable "log_group_name" {
  type = string
}

variable "db_host" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_secret_arn" {
  type = string
}