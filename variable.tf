variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "aws_profile" {
  default = "personal"
}

variable "environment" {
  description = "Environment name (dev, stage, prod)"
  type        = string
  default     = "dev"
}

variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnet" {
  description = "Private subnet CIDRs"
  type        = list(string)
  default     = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}

variable "public_subnet" {
  description = "Public subnet CIDRs"
  type        = list(string)
  default     = [
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24"
  ]
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
  default     = [
    "ap-south-1a",
    "ap-south-1b",
    "ap-south-1c"
  ]
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "eks"
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.34"
}

variable "instance_types" {
  description = "EC2 instance types for node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "ami_type" {
  description = "AMI type for EKS nodes"
  type        = string
  default     = "AL2023_x86_64_STANDARD"
}

variable "ec2_ssh_key" {
  description = "SSH key pair name for worker nodes"
  type        = string
  default     = "sit-server"
}

