provider "helm" {
  kubernetes {
    client_certificate     = var.k8s_client_certificate
    client_key             = var.k8s_client_key 
    cluster_ca_certificate = var.k8s_cluster_ca_certificate
    host                   = var.k8s_host
    password               = var.k8s_userpass
    token                  = var.k8s_token
    username               = var.k8s_username
  }
}


