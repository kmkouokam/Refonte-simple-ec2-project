variable "env" {
  default = "Production"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "The provided vpc_cidr must be a valid CIDR block"
  }
}

variable "public_subnet_cidrs" {
  description = "List of CIDRs for public subnets"
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
}

variable "private_subnet_cidrs" {
  description = "List of CIDRs for private subnets"
  default = [
    "10.0.3.0/24",
    "10.0.4.0/24",
  ]
}

variable "ipv6_cidr_block" {
  description = "IPv6 CIDR block for inbound rules"
  type        = string
  default     = "::/0" # Allow all IPv6 traffic (you can change this)
}

variable "tags" {
  description = "values for the tags to be applied to the resources"
  type        = map(string)
  default = {
    Owner       = "Ernestine D Motouom"
    Project     = "refonte_class"
    Environment = "Production"
  }

}
