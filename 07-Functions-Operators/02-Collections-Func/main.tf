
variable "names" {
  default = ["Alice", "Bob", "Charlie"]
}

variable "ages" {
  default = {
    Alice   = 30
    Bob     = 25
    Charlie = 35
  }
}

output "first_name" {
  value = var.names[0] # Accesses the first element in the list
}

output "sorted_names" {
  value = sort(var.names) # Sorts the list alphabetically
}

output "alice_age" {
  value = lookup(var.ages, "Alice", "Unknown") # Retrieves the value associated with the key "Alice"
}

output "age_sum" {
  value = sum([for name, age in var.ages : age]) # Sums the ages from the map
}
