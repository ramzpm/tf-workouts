variable "cpu_count" {
  default = 4
}

variable "memory_size" {
  default = 16
}

variable "environment" {
  default = "dev"
}

variable "allowed_regions" {
  default = ["us-east-1", "us-west-2", "eu-west-1"]
}

variable "selected_region" {
  default = "us-west-2"
}

## Equality Operators

output "is_production" {
  value = var.cpu_count == "4" # Checks if the cpu_count is 4
}

# Logical Operators

output "is_large_instance" {
  value = var.cpu_count > 2 && var.memory_size > 8 # Both conditions must be true
}

output "is_medium_or_large" {
  value = var.cpu_count > 2 || var.memory_size > 16 # At least one condition must be true
}

# Conditional Operators

output "instance_type" {
  value = var.environment == "prod" ? "t2.large" : "t2.micro" # Chooses instance type based on environment
}

## Collection Operators

output "is_region_allowed" {
  value = contains(var.allowed_regions, var.selected_region) # Checks if the selected region is in the allowed list
}

output "index_of_region" {
  value = index(var.allowed_regions, var.selected_region) # Finds the index of the selected region
}
