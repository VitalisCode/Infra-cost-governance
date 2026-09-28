variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "security_group_ids" {
  type = list(string)
}

variable "instance_class" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "database_name" {
  type = string
}

variable "username" {
  type = string
}