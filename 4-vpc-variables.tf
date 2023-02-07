# VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string 
  default = "LabVPC"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "LabVPC CIDR Block"
  type = string 
  default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "LabVPC Availability Zones"
  type = list(string)
  default = ["ap-east-1", "ap-east-1"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "LabVPC Public Subnets"
  type = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

# VPC Private Subnets
variable "vpc_app_subnets" {
  description = "LabVPC App Subnets"
  type = list(string)
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(string)
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group" {
  description = "LabVPC Create Database Subnet Group"
  type = bool
  default = true 
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type = bool
  default = false
}

# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true  
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Use Single NAT Gateway for All Private Subnets"
  type = bool
  default = false  
}

# VPC One NAT Gateway Per AZ (True or False)
variable "vpc_one_nat_gateway_per_az" {
  description = "Use One NAT Gateway Per AZ for Private Subnets"
  type = bool
  default = true  
}
