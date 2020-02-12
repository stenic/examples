plan: _init
	terraform plan environments/$(env)/$(component)
	
apply: _init
	terraform plan environments/$(env)/$(component)

_init:
	rm -rf .terraform
	terraform init \
		-backend=true \
		-backend-config="key=$(env)/$(component)/terraform.tfstate" \
		environments/$(env)/$(component)