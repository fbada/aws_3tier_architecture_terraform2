### Custom VPC with EC2 Instances, Load Balancing, Apache, and MySQL using Terraform

This repository contains all the necessary Terraform files (.tf files) and instructions to create a custom VPC with public and private subnets, EC2 instances, Security Group, Elastic IP, NAT Gateway, Internet Gateway, Route Tables, and an Application Load Balancer. Additionally, it includes manual steps for configuring an Apache Webserver and MySQL DB on the provisioned resources.

To implement the mentioned infrastructure using Terraform, you'll first need to write the appropriate `.tf` configuration files. You will need different configuration files for each of the AWS resources you're trying to provision.

Before you begin, you'll want to install Terraform and the AWS CLI, and configure your AWS credentials. You can find information on how to do this in the [Terraform AWS Provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs).

Next, create your `.tf` files. Here is an example of what the contents of your VPC configuration file (`vpc.tf`) might look like:

```hcl
provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
```

You'll want to create similar configuration files for each of the resources. Please refer to the [Terraform AWS Provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) for more examples.

Once you've written your configuration files, you can initialize Terraform:

```bash
terraform init
```

Then, create an execution plan with:

```bash
terraform plan
```

Finally, apply the changes required to reach the desired state of the configuration with:

```bash
terraform apply
```

You will be prompted to confirm that you want to make the changes described in the plan. Type `yes` to proceed.
