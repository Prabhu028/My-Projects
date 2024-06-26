resource "azurerm_kubernetes_cluster" "main" {
  name                = "aks-1"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

resource "null_resource" "get_kube_config" {
  triggers = {
    cluster_id = azurerm_kubernetes_cluster.main.id
  }

  provisioner "local-exec" {
    command = "az aks get-credentials --resource-group ${azurerm_resource_group.main.name} --name ${azurerm_kubernetes_cluster.main.name} --overwrite-existing"
  }
}