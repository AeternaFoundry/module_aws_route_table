output "route_tables_id" {
  description = "Map of id values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route_tables_arn" {
  description = "Map of arn values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route_tables_owner_id" {
  description = "Map of owner_id values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "route_tables_propagating_vgws" {
  description = "Map of propagating_vgws values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.propagating_vgws if v.propagating_vgws != null && length(v.propagating_vgws) > 0 }
}
output "route_tables_region" {
  description = "Map of region values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.region if v.region != null && length(v.region) > 0 }
}
output "route_tables_route" {
  description = "Map of route values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.route if v.route != null && length(v.route) > 0 }
}
output "route_tables_tags" {
  description = "Map of tags values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "route_tables_tags_all" {
  description = "Map of tags_all values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "route_tables_vpc_id" {
  description = "Map of vpc_id values across all route_tables, keyed the same as var.route_tables"
  value       = { for k, v in aws_route_table.route_tables : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

