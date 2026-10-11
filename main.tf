resource "aws_route_table" "route_tables" {
  for_each = var.route_tables

  vpc_id           = each.value.vpc_id
  propagating_vgws = each.value.propagating_vgws
  region           = each.value.region
  tags             = each.value.tags
  tags_all         = each.value.tags_all

  dynamic "route" {
    for_each = each.value.route != null ? each.value.route : []
    content {
      carrier_gateway_id         = route.value.carrier_gateway_id
      cidr_block                 = route.value.cidr_block
      core_network_arn           = route.value.core_network_arn
      destination_prefix_list_id = route.value.destination_prefix_list_id
      egress_only_gateway_id     = route.value.egress_only_gateway_id
      gateway_id                 = route.value.gateway_id
      ipv6_cidr_block            = route.value.ipv6_cidr_block
      local_gateway_id           = route.value.local_gateway_id
      nat_gateway_id             = route.value.nat_gateway_id
      network_interface_id       = route.value.network_interface_id
      odb_network_arn            = route.value.odb_network_arn
      transit_gateway_id         = route.value.transit_gateway_id
      vpc_endpoint_id            = route.value.vpc_endpoint_id
      vpc_peering_connection_id  = route.value.vpc_peering_connection_id
    }
  }
}

