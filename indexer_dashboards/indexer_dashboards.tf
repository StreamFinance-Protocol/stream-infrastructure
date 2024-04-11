module "indexer_dashboards" {
  source                            = "git::https://github.com/StreamFinance-Protocol/stream-infrastructure//modules/indexer_dashboards"
  indexer_services_variable_mapping = var.indexer_services_variable_mapping
}
