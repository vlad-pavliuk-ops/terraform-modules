aws_region = "eu-west-1"

vpc_name = "cmtr-7dr93dhf-vpc"
vpc_cidr = "10.10.0.0/16"

subnet_names = [
  "cmtr-7dr93dhf-subnet-public-a",
  "cmtr-7dr93dhf-subnet-public-b",
  "cmtr-7dr93dhf-subnet-public-c"
]

subnet_cidrs = [
  "10.10.1.0/24",
  "10.10.3.0/24",
  "10.10.5.0/24"
]

availability_zones = [
  "eu-west-1a",
  "eu-west-1b",
  "eu-west-1c"
]

igw_name         = "cmtr-7dr93dhf-igw"
route_table_name = "cmtr-7dr93dhf-rt"

allowed_ip_range = [
  "18.153.146.156/32",
  "94.131.251.82/32"
]

ssh_sg_name          = "cmtr-7dr93dhf-ssh-sg"
public_http_sg_name  = "cmtr-7dr93dhf-public-http-sg"
private_http_sg_name = "cmtr-7dr93dhf-private-http-sg"

launch_template_name = "cmtr-7dr93dhf-template"
instance_type        = "t3.micro"

asg_name         = "cmtr-7dr93dhf-asg"
desired_capacity = 2
min_size         = 2
max_size         = 2

lb_name           = "cmtr-7dr93dhf-lb"
target_group_name = "cmtr-7dr93dhf-tg"
