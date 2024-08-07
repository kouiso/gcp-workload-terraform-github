# Variables

variable "project_id" {
  description = "プロジェクトID"
  type        = string
}

variable "region" {
  description = "リージョン"
  type        = string
}

variable "zone" {
  description = "ゾーン"
  type        = string
}

variable "repository" {
  description = "OIDC による認証を行うことのできるリポジトリ"
  type        = string
}