variable "aws_region" {
  description = "AWS region for the infrastructure"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_names" {
  description = "Names of the public subnets"
  type        = list(string)
}

variable "subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones for the public subnets"
  type        = list(string)
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "Name of the public route table"
  type        = string
}

variable "allowed_ip_range" {
  description = "CIDR blocks allowed to access SSH and HTTP"
  type        = list(string)
}

variable "ssh_sg_name" {
  description = "Name of the SSH security group"
  type        = string
}

variable "public_http_sg_name" {
  description = "Name of the public HTTP security group"
  type        = string
}

variable "private_http_sg_name" {
  description = "Name of the private HTTP security group"
  type        = string
}

variable "launch_template_name" {
  description = "Name of the launch template"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "asg_name" {
  description = "Name of the Auto Scaling group"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances"
  type        = number
}

variable "min_size" {
  description = "Minimum number of EC2 instances"
  type        = number
}

variable "max_size" {
  description = "Maximum number of EC2 instances"
  type        = number
}

variable "lb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "target_group_name" {
  description = "Name of the target group"
  type        = string
}
