variable "aws_region" {
  description = "AWS region to use"
  type        = string
  default     = "us-west-1"
}


variable "aws_access_key" {
  description = "AWS Access Key ID for the target AWS account"
  type        = string
  default     = "AKIA4MTWKSTBPGH6PE5F"
}

variable "aws_secret_key" {
  description = "AWS Secret Key for the target AWS account"
  type        = string
  default     = "GJuArSHqm40IJs+VJdj5B1t6amQNmwd5bdzB5Tbr"
}

/*
variable "aws_session_token" {
  description = "AWS Session Token for the target AWS account. Required only if authenticating using temporary credentials"
  type        = string
  default     = ""
}

*/


variable "vpc_cidr" {
  description = "The IPv4 CIDR block to use for the VPC"
  type        = string
  default     = "192.170.0.0/20"
  validation {
    condition     = tonumber(split("/", var.vpc_cidr)[1]) <= 20 && tonumber(split("/", var.vpc_cidr)[1]) >= 16
    error_message = "CIDR size must be at least /20 and no larger than /16"
  }
}
