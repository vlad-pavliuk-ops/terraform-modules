resource "aws_security_group" "ssh" {
  name        = var.ssh_sg_name
  description = "Allow SSH access from allowed IP ranges"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from allowed IP ranges"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip_range
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.ssh_sg_name
  }
}

resource "aws_security_group" "public_http" {
  name        = var.public_http_sg_name
  description = "Allow HTTP access from allowed IP ranges"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP from allowed IP ranges"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip_range
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.public_http_sg_name
  }
}

resource "aws_security_group" "private_http" {
  name        = var.private_http_sg_name
  description = "Allow HTTP access from the public HTTP security group"
  vpc_id      = var.vpc_id

  ingress {
    description     = "HTTP from public HTTP security group"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.public_http.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.private_http_sg_name
  }
}
