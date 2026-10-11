resource "oci_email_email_ip_pool" "email_email_ip_pools" {
  for_each = var.email_email_ip_pools

  compartment_id                = each.value.compartment_id
  name                          = each.value.name
  outbound_ips                  = each.value.outbound_ips
  defined_tags                  = each.value.defined_tags
  description                   = each.value.description
  freeform_tags                 = each.value.freeform_tags
  last_ip_drain_period_in_hours = each.value.last_ip_drain_period_in_hours

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

