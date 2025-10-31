# gcp-workflow-terraform-github

これはGCPにgithub actionを設定して、後続のgithub action上でのterraformの処理を通すために作成されます。

なので本リポジトリではgithub actionを使わずにそのままローカルで実行するのが基本的な使い方です。

## 必要なサービスアカウント権限

Terraformを実行するために必要な最小限のサービスアカウント権限は以下の通りです：

1. **Project Viewer** (`roles/viewer`): 基本的な読み取りアクセスを提供します。
2. **Storage Admin** (`roles/storage.admin`): Terraformの状態ファイルを保存するためのGCSバケットへのアクセスを許可します。
3. **Compute Admin** (`roles/compute.admin`): GCEインスタンスの作成、管理を許可します。
4. **Service Account User** (`roles/iam.serviceAccountUser`): サービスアカウントの使用を許可します。

これらの権限を持つサービスアカウントを使用することで、TerraformはGCPリソースを適切に管理できます。

参考リンク:
- [Managing GCP projects with Terraform](https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform)
- [Running Infrastructure-as-Code with the least privilege possible](https://cloud.google.com/blog/products/devops-sre/running-infrastructure-code-least-privilege-possible)
