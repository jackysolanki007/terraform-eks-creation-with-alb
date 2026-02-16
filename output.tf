output "nginx_alb_dns" {
  value = data.aws_lb.nginx.dns_name
}
