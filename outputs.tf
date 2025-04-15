output "openproject_url" {
  description = "Access OpenProject via ALB"
  value       = module.alb.alb_dns_name
}
