# Terraform Basics

## Environment
- [ ] Install Terraform CLI
- [ ] Install AWS CLI
- [ ] Install VS Studio Code Editor
- [ ] Install Hashicorp Terraform Plugin for VS Code

### Intstall Terraform CLI

> REFERENCE: See Terraform Download Instructions [here](https://developer.hashicorp.com/terraform/install)

----------

## Terraform Lifecycle

<p align="center">
    <img width="400" alt="image" src="https://github.com/user-attachments/assets/5b97026b-5a14-42f2-a530-8c47d487e566">
</p>


- [ ] `terraform init`
    + Used to initialize a working directory containing terraform config files
    + This is the first command that should be run after writing a new Terraform configuration
    + Downloads _Providers_
- [ ] `terraform validate`
    + Validates the terraform configuration files in that respective directory to ensure they are syntactically valid and internally consistent
- [ ] `terraform plan`
    + Creates an execution plan 
    + Terraform performs a refresh and determines what actions are necessary to achieve the desired state specified in configuration files
- [ ] `terraform apply`
    + Used to apply the changes required to reach the desired state of the configuration
    + By default, apply scans the current directory for the configuration and applies the changes appropriately
- [ ] `terraform destroy`
    + Used to destroy the Terraform managed infrastructure
    + This will ask for confirmation before destroying

----------

## Deploy An EC2 Instance

- [ ] Navigate to the _Terraform/Basics/ec2Instance.tf_ file.
- [ ] Execute the Terraform Lifecycle commands ( terraform init -> apply )
- [ ] Validate that the EC2 instance gets created in the AWS console
- [ ] Execute the terraform destroy command 

> TROUBLE SHOOTING: You may be prompted for a _default vpc_, error. If you do encounter this error take a peek at the following config on AWS Console [here](https://stackoverflow.com/questions/69571699/vpcidnotspecified-no-default-vpc-for-this-user-error-when-doing-terraform-apply)

> REFERENCE: See the Terraform registry for reference of some of the Arguments, Attributes, & Meta-Arguments [here](https://registry.)

----------

## Understanding Terraform Language Basics
- [ ] Understanding Blocks
- [ ] Understanding Arguments, Attributes, & Meta-Arguments
- [ ] Understanding Identifiers
- [ ] Understanding Comments

> REFERENCE: See language basics [here](https://developer.hashicorp.com/terraform/language)

### Understand Top Level Blocks
- [ ] Terraform Settings Block
- [ ] Provider Block
- [ ] Resource Block
- [ ] Input Variables Block 
- [ ] Output Values Block
- [ ] Local Values Block 
- [ ] Data Sources Block 
- [ ] Modules Block

<p align="center">
    <img width="400" alt="image" src="https://github.com/user-attachments/assets/bd59369d-7756-4e7e-a6d6-654a86c06e8e">
</p>

