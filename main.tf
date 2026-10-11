data "databricks_postgres_endpoints" "postgres_endpoints_lookup" {
  for_each = var.postgres_endpoints_lookup

  parent          = each.value.parent
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

