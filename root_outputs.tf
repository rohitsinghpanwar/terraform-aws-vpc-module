output "vpc" {
  description = "The ID of the VPC"
  value       = module.vpc_creation.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.vpc_creation.public_subnets
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.vpc_creation.private_subnets
}

