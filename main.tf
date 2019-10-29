provider "azurerm" {
  version = "=1.34.0"
  subscription_id = "26ebcb66-f4c7-4d02-b57c-2f48e919cc96"
  client_id       = "4002f287-4f19-45d0-b572-28669515529b"
  #client_secret   = "${var.client_secret}"
  client_secret   = "81a5b777-a07a-47ce-b8b8-40a41fd965e3"
  tenant_id       = "5819e6cf-b055-4e49-a4f4-a671766a194a"
}

provider "kubernetes" {
  host                   = "${azurerm_kubernetes_cluster.k8s.kube_config.0.host}"
  username               = "${azurerm_kubernetes_cluster.k8s.kube_config.0.username}"
  password               = "${azurerm_kubernetes_cluster.k8s.kube_config.0.password}"
  client_certificate     = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)}"
  client_key             = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)}"
  cluster_ca_certificate = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)}"
}
