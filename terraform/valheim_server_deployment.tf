
#Valheim Server Solution
module "valheim_server" {
  source = "github.com/CityHallin/terraform_modules/solutions/valheim_server"

  #General Variables
  project     = var.project
  environment = var.environment
  region      = var.region

  #VM Variables
  vm_username           = var.vm_username
  vm_password           = var.vm_password
  vm_size               = var.vm_size
  vm_image_publisher    = var.vm_image_publisher
  vm_image_offer        = var.vm_image_offer
  vm_image_sku          = var.vm_image_sku
  vm_image_version      = var.vm_image_version
  vm_startup_automation = var.vm_startup_automation
  vm_stop_automation    = var.vm_stop_automation
  vm_restart_automation = var.vm_restart_automation

  #Network
  remote_ip_address  = var.remote_ip_address
  runner_ip_address  = var.runner_ip_address
  vnet_address_range = var.vnet_address_range
  snet_address_range = var.snet_address_range

  #DNS
  dns_namespace = var.dns_namespace
}


