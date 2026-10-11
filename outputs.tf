output "bigquery_reservation_groups_id" {
  description = "Map of id values across all bigquery_reservation_groups, keyed the same as var.bigquery_reservation_groups except keys with no id are omitted"
  value       = { for k, v in google_bigquery_reservation_group.bigquery_reservation_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_reservation_groups_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_reservation_groups, keyed the same as var.bigquery_reservation_groups except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_reservation_group.bigquery_reservation_groups : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_reservation_groups_location" {
  description = "Map of location values across all bigquery_reservation_groups, keyed the same as var.bigquery_reservation_groups except keys with no location are omitted"
  value       = { for k, v in google_bigquery_reservation_group.bigquery_reservation_groups : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_reservation_groups_name" {
  description = "Map of name values across all bigquery_reservation_groups, keyed the same as var.bigquery_reservation_groups except keys with no name are omitted"
  value       = { for k, v in google_bigquery_reservation_group.bigquery_reservation_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigquery_reservation_groups_project" {
  description = "Map of project values across all bigquery_reservation_groups, keyed the same as var.bigquery_reservation_groups except keys with no project are omitted"
  value       = { for k, v in google_bigquery_reservation_group.bigquery_reservation_groups : k => v.project if v.project != null && length(v.project) > 0 }
}

