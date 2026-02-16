variable "namespace" {
  type    = string
  default = "default"
}

variable "replicas" {
  type    = number
  default = 2
}

variable "image" {
  type    = string
  default = "nginx:latest"
}

variable "alb_name" {
  type = string
}

variable "cluster_name" {
  description = "Cluster_name"
}