Pact broker on AWS using terraform
=============

## Setup

You need to have a postgres instance available (e.g Amazon RDS).

## Configuration

Example `pact.tfvars`:

```
aws_access_key="some key"
aws_secret_key="some secret"
key_name="pem name"
key_path="~/.ssh/pem.location"
aws_region="ap-southeast-2"
aws_ami="ubuntu ami for your region"

# db stuff
db_username="username"
db_password="password"
db_host="some host"
db_name="database"
```

## Plan

`terraform plan -var-file pact.tfvars`

## Apply

`terraform apply -var-file pact.tfvars`

## TODO

* Modify Terraform so that it can provision templated files
