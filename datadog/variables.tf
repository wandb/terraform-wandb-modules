variable "cluster_name" {
  nullable = false
  type     = string
}

variable "api_key" {
  nullable = false
  type     = string
}

variable "app_key" {
  nullable = false
  type     = string
}

variable "site" {
  nullable = false
  type     = string
}

variable "k8s_client_certificate" {
  default  = null
  nullable = true
  type     = string
}

variable "k8s_client_key" {
  default  = null
  nullable = true
  type     = string
}

variable "k8s_cluster_ca_certificate" {
  nullable = false
  type     = string
}

variable "k8s_host" {
  nullable = false
  type     = string
}

variable "k8s_token" {
  default  = null
  nullable = true
  type     = string
}

variable "k8s_username" {
  default  = null
  nullable = true
  type     = string
}

variable "k8s_userpass" {
  default  = null
  nullable = true
  type     = string
}


variable "namespace" {
  description = "The name prefix for all resources created."
  nullable    = false
  type        = string
}
