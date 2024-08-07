provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# APIの有効化
module "service" {
  source     = "./modules/service"
  project_id = var.project_id
}

resource "random_id" "pool_id_suffix" {
  byte_length = 4
}

module "workload_identity" {
  source     = "./modules/workload_identity"
  project_id = var.project_id
  region     = var.region
  pool_id    = "my-pool-${random_id.pool_id_suffix.hex}"

  depends_on = [
    module.service
  ]
}

module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
  region     = var.region
  pool_id    = module.workload_identity.workload_identity_provider_pool.name
  repository = var.repository

  depends_on = [
    module.workload_identity,
    module.service
  ]
}
