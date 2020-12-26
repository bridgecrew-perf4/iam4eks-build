provision:
  @cd iam && \
  terraform init && \
  terraform apply --auto-approve

plan:
  @cd iam && \
  terraform init && \
  terraform plan

setup-cloudshell:
  mkdir -p ~/.local/bin && \
  wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip && \
  unzip terraform_0.12.24_linux_amd64.zip && \
  install -m 775 terraform ~/.local/bin && \
  rm terraform && \
  rm terraform_0.12.24_linux_amd64.zip
