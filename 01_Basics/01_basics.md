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

<p align="center">
    <img width="400" alt="image" src="https://github.com/user-attachments/assets/5f96658e-09cc-429e-874f-f8c932203a06">
</p>

> To eliminate some of the created files during the `destroy` procedure you can run `terraform plan -destroy`. Then run `rm -rf .terraform* && rm -rf terraform*`

> To run Terraform apply without having to enter the _yes_ prompt from the cli, you can run `terraform apply -auto-approve`

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

#### Terraform Provider Block

> REFERENCE: You can view Terraform Registry and associated providers [here](https://registry.terraform.io/)

<p align="center">
    <img width="400" alt="image" src="https://github.com/user-attachments/assets/68973e5b-d29d-48ea-b539-8c6df1262b39">
</p>


#### Resource Block 

> *Resouce Type*: Determines the kind of infrastructure object it manages and what arguements and other attributes the resource supports. 

> *Resource Local Name*: It is used to refer to this resource from elsewhere in the same Terraform module, but has no significance outside that modules scope. The resource type and name together serve as an identifier for a given resource and so must be *unique* within a module.

<p align="center">
    <img width="400" alt="image" src="https://github.com/user-attachments/assets/14e00d63-5b25-42ae-b501-73e618247b05">
</p>

> Resource Behavior

<p align="center">
<img width="400" alt="image" src="https://github.com/user-attachments/assets/25563939-165d-4337-be91-a5d30fc0a1bc">
</p>


> REFERENCE: An *Argument* is an _input_ to the resource block. An *Attribue* is an _output_ that we can utilize as a reference within our TF code. Note that in the TF registry.io documentation in the examples you will see _Arguments_ & _Attributes_ referenced in the documentation. Realize the difference between these 2. 

---------

## Additional Topics

- [ ] We didn't associate a key/pair with our EC2 instance. 
> We can do this in `tf` using the Terraform Resource Argument -> `keyName`

- [ ] The AMI name is static, how can we make this dynamic? 
> We can use the concept of tf `Datasources`

- [ ] We didn't create multiple instances of our EC2 instance. How can we do this? 
> We can use the _Resource Meta-Argument_: `count` to do this. 

- [ ] We didn't add any variables or parameterizations. Can we do this in tf? 
> We will do this using the Terraform `Input Variables` concepts

- [ ] We didn't extract any information on terminal about instance information. How can we do this? 
> We will use the tf `Outputs` concepts to extract instance information and utilize as a reference in other portions of code

- [ ] We didn't see how to create an additional instance after the initial instance was created. Can we create additional resources? 
> We can create additional resources after the initial resource create using the _Resource Meta-Argument_: `depends_on`