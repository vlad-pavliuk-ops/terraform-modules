variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "IDs of the public subnets"
  type        = list(string)
}

variable "ssh_sg_id" {
  description = "ID of the SSH security group"
  type        = string
}

variable "private_http_sg_id" {
  description = "ID of the private HTTP security group"
  type        = string
}

variable "public_http_sg_id" {
  description = "ID of the public HTTP security group"
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
