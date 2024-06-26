terraform {
  cloud {
    organization = "streamprotocol"

    workspaces {
      tags = ["indexer-dashboards"]
    }
  }

  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "~> 3.29"
    }
  }

  required_version = "~> 1.3.2"
}
