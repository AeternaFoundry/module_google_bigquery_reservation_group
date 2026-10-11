resource "google_bigquery_reservation_group" "bigquery_reservation_groups" {
  for_each = var.bigquery_reservation_groups

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  location        = each.value.location
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

