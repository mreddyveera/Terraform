resource "aws_route53_record" "expense" {
  for_each = var.instances
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl=1
  records= [aws_instances.Manikanta[each.key].private_ip]
}