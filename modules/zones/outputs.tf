output "route53_zone_zone_id" {
  description = "Zone ID of Route53 zone"
  value       = { for k, v in merge(aws_route53_zone.this, aws_route53_zone.with_external_vpcs) : k => v.zone_id }
}

output "route53_zone_name_servers" {
  description = "Name servers of Route53 zone"
  value       = { for k, v in merge(aws_route53_zone.this, aws_route53_zone.with_external_vpcs) : k => v.name_servers }
}

output "route53_zone_name" {
  description = "Name of Route53 zone"
  value       = { for k, v in merge(aws_route53_zone.this, aws_route53_zone.with_external_vpcs) : k => v.name }
}
