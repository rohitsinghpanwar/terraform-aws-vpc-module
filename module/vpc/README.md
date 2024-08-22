# terraform-aws-vpc
## Overview
This terraform module is created to test my terraform knowledge about creating own terraform module and publishing it on terraform directory.

## Features
- creates a VPC eith a specified CIDR block 
- creates public and private subnets
- creates an internet gateway(IGW) for public subnets
- sets up an route tables for public subnets

## Usage
```
module "vpc_creation" {
        source = "./module/vpc/"
        vpc_config = {
                cidr_block = "10.0.0.0/16"
                name       = "Your_vpc_name"

                }
        subnet_config = {
           public_subnet = {
                cidr_block = "10.0.0.0/24"
                az = "ap-south-1a"
                #to create public subnet set public true
                public = true
                }
           private_subnet = {
                cidr_block = "10.0.1.0/24"
                az = "ap-south-1b"
                }
        }
}

```
