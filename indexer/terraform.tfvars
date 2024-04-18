indexers = {
  ap-northeast-1 = {
    name               = "indexer-apne1"
    availability_zones = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
    vpc_cidr_block     = "10.0.0.0/16"
    private_subnets_availability_zone_to_cidr_block = {
      "ap-northeast-1a" = "10.0.0.0/24"
      "ap-northeast-1c" = "10.0.1.0/24"
      "ap-northeast-1d" = "10.0.2.0/24"
    }
    public_subnets_availability_zone_to_cidr_block = {
      "ap-northeast-1a" = "10.0.3.0/24"
      "ap-northeast-1c" = "10.0.4.0/24"
      "ap-northeast-1d" = "10.0.5.0/24"
    }
    elb_account_id           = 582318560864
    rds_availability_regions = ["ap-northeast-1c", "ap-northeast-1d"]
  }
}
environment      = "dev"
node_environment = "production"
region           = "ap-northeast-1"
bugsnag_key      = "placeholder value"

elasticache_redis_num_cache_clusters = 2

full_node_name                       = "indexer-full-node"
backup_full_node_name                = "indexer-full-node-backup"
snapshot_full_node_name              = "indexer-full-node-snapshot"
full_node_availability_zones         = ["ap-northeast-1a", "ap-northeast-1c"]
full_node_cidr_vpc                   = "11.0.0.0/16"
full_node_cidr_public_subnets        = ["11.0.1.0/24", "11.0.2.0/24"]
backup_full_node_cidr_vpc            = "12.0.0.0/16"
backup_full_node_cidr_public_subnets = ["12.0.1.0/24", "12.0.2.0/24"]
full_node_tcp_port_to_health_protocol = {
  1317  = "TCP"
  9090  = "TCP"
  26656 = "TCP"
  26657 = "HTTP"
}
# Port 26656 is for Tendermint P2P
full_node_public_ports = ["26656"]

# TODO variables set by soletty
bugsnag_release_stage = "development"  # Or "staging", "testnet" depending on your environment
msk_instance_type = "kafka.m5.large" # second smallest
rds_db_instance_class = "db.t3.medium"
rds_db_allocated_storage_gb = 20  # example for 20 GB
elasticache_redis_node_type = "cache.t4g.small"  # example for a memory-optimized instance
full_node_container_chain_home = "/mnt/data/.dydx-mainnet-1" # set per node
snapshot_full_node_container_chain_home = "/mnt/data/snapshots" 
full_node_key = "WBe0ZiE8OtKr+K3e8ukziCc0DvrXn6t0BdjyZLBH9j2YoMFd8ogeXG21LvF74pZ10NWT36uofTVHgseOysKAFA=="
full_node_container_p2p_persistent_peers = "17e5e45691f0d01449c84fd4ae87279578cdd7ec"
full_node_ecr_repository_name = "indexer-full-node"
snapshot_full_node_ecr_repository_name = "snapshot-indexer-full-node"
full_node_ecs_task_memory = 4096  # Amount in MiB
full_node_ec2_instance_type = "c7i.8xlarge"
full_node_tendermint_log_level = "info"
s3_snapshot_bucket = "dydx-snapshots"
full_node_use_cosmovisor = true
full_node_use_persistent_docker_volume = true
datadog_api_key = "put this value in terraform cloud"
datadog_app_key = "put this value in terraform cloud"
enable_https = true
acm_certificate_domain = "placeholder value"



