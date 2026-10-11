variable "email_email_ip_pools" {
  description = <<EOT
Map of email_email_ip_pools, attributes below
Required:
    - compartment_id
    - name
    - outbound_ips
Optional:
    - defined_tags
    - description
    - freeform_tags
    - last_ip_drain_period_in_hours
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                = string
    name                          = string
    outbound_ips                  = list(string)
    defined_tags                  = optional(map(string))
    description                   = optional(string)
    freeform_tags                 = optional(map(string))
    last_ip_drain_period_in_hours = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

