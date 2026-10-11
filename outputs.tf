output "elb_hosted_zone_id_lookup_id" {
  description = "Map of id values across all elb_hosted_zone_id_lookup, keyed the same as var.elb_hosted_zone_id_lookup"
  value       = { for k, v in data.aws_elb_hosted_zone_id.elb_hosted_zone_id_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elb_hosted_zone_id_lookup_region" {
  description = "Map of region values across all elb_hosted_zone_id_lookup, keyed the same as var.elb_hosted_zone_id_lookup"
  value       = { for k, v in data.aws_elb_hosted_zone_id.elb_hosted_zone_id_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

