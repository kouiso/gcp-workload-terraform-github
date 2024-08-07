
output "github_actions_sa_service_account_name" {
  value       = module.iam.github_actions_sa_service_account_name
  description = "GithubActions 連携用 Service Account 名"
}

output "workload_identity_provider_pool" {
  value       = module.workload_identity.workload_identity_provider_pool
  description = "Workload Identity プール"
}

output "workload_identity_provider_github" {
  value       = module.workload_identity.workload_identity_provider_github
  description = "Workload Identity プロバイダー"
}
