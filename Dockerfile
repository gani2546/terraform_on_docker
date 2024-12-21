FROM hashicorp/terraform:latest
WORKDIR /app
COPY . /app
RUN terraform init \
 && terraform plan -out=tfplan \
 && terraform apply -auto-approve tfplan
CMD ["terraform", "--help"]
