rgs = {

  rg1 = {
    name     = "rg-prod"
    location = "centralindia"

  }

  rg2 = {
    name     = "rg-dev"
    location = "centralindia"

  }

}

vnets = {

  vnet1 = {
    name                = "prod-vnet1"
    location            = "centralindia"
    resource_group_name = "rg-prod"
    address_space       = ["10.0.0.0/16"]
  }
}

snets = {

  snet1 = {
    name                 = "prod-vnet1-subnet1"
    resource_group_name  = "rg-prod"
    virtual_network_name = "prod-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }

  snet2 = {
    name                 = "prod-vnet1-subnet2"
    resource_group_name  = "rg-prod"
    virtual_network_name = "prod-vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
