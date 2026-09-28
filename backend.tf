terraform {
  backend "s3" {
    key          = "infra-cost-governance/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}

# Required when using this repo locally or in CI:
# terraform init \
#   -backend-config="bucket=YOUR_TF_STATE_BUCKET"