# Root level variables that all modules can inherit. This is especially helpful with multi-account configs
# where terraform_remote_state data sources are placed directly into the modules.

iam_tfstate_bucket = "terragrunt-poc-mazzarino-terraform-state"

aws_region = "us-west-2"
