AWS_ACCOUNT?=mazzarino
ENV?=test
CODENAME?=

.PHONY: init
init:
	@terragrunt apply-all \
		--terragrunt-config $(AWS_ACCOUNT)/terraform.tfvars \
		--terragrunt-working-dir $(AWS_ACCOUNT)/$(ENV)/_global

.PHONY: frontend
frontend:
	@terragrunt apply \
		--terragrunt-config $(AWS_ACCOUNT)/$(ENV)/$(ENV)-$(CODENAME)/frontend/terraform.tfvars \
		--terragrunt-working-dir $(AWS_ACCOUNT)/$(ENV)/$(ENV)-$(CODENAME)/frontend