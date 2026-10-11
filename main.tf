data "aws_elb_hosted_zone_id" "elb_hosted_zone_id_lookup" {
  for_each = var.elb_hosted_zone_id_lookup

  region = each.value.region
}

