variable "provider_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "Vpc cidr block"
  type        = string
  default     = "10.0.0.0/16"
}