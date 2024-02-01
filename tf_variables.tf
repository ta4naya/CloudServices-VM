variable "vm_instances" {
  type = map(object({
    vm_size         = string
    os_disk_size_gb = number
    os_disk_type    = string
    os_disk_caching = string
    public_ip       = bool
    vnet_name       = string
    subnet_name     = string
    vnet_resourcegroup = string
    resource_group  = string
    image_publisher = string
    image_offer     = string
    image_sku       = string
    image_version   = string
  }))
  default = {}
}

variable "data_disks" {
  type = map(object({
    data_disk_storage_account_type = string
    data_disk_create_option        = string
    data_disk_size                 = number
    data_disk_encryption           = bool
    attach_to_vm                   = bool
    vm_name                        = string
    count                          = number
    data_disk_caching              = string
  }))
  default = {}
}

#Data resourcegroup verwendet die eigene variable. 
variable "resourcegroup" {
  type = map(string)
}


variable "admin_username" {
  type = map(string)
  sensitive = true
}

variable "admin_password" {
  type = map(string)
  sensitive = true
}