output "load_balancer_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.application.lb_dns_name
}
