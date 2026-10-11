variable "route_tables" {
  description = <<EOT
Map of route_tables, attributes below
Required:
    - vpc_id
Optional:
    - propagating_vgws
    - region
    - tags
    - tags_all
    - route (block):
        - carrier_gateway_id (optional)
        - cidr_block (optional)
        - core_network_arn (optional)
        - destination_prefix_list_id (optional)
        - egress_only_gateway_id (optional)
        - gateway_id (optional)
        - ipv6_cidr_block (optional)
        - local_gateway_id (optional)
        - nat_gateway_id (optional)
        - network_interface_id (optional)
        - odb_network_arn (optional)
        - transit_gateway_id (optional)
        - vpc_endpoint_id (optional)
        - vpc_peering_connection_id (optional)
EOT

  type = map(object({
    vpc_id           = string
    propagating_vgws = optional(set(string))
    region           = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
    route = optional(list(object({
      carrier_gateway_id         = optional(string)
      cidr_block                 = optional(string)
      core_network_arn           = optional(string)
      destination_prefix_list_id = optional(string)
      egress_only_gateway_id     = optional(string)
      gateway_id                 = optional(string)
      ipv6_cidr_block            = optional(string)
      local_gateway_id           = optional(string)
      nat_gateway_id             = optional(string)
      network_interface_id       = optional(string)
      odb_network_arn            = optional(string)
      transit_gateway_id         = optional(string)
      vpc_endpoint_id            = optional(string)
      vpc_peering_connection_id  = optional(string)
    })))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

