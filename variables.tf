variable "bigquery_reservation_groups" {
  description = <<EOT
Map of bigquery_reservation_groups, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - location
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    location        = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

