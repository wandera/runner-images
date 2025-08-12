// AWS support related variables
variable "sources" {
  type    = list(string)
  default = ["source.azure-arm.build_image"]
}
variable "aws_ami_name" {
  type    = string
  default = "github-runner"
}
variable "aws_ami_filter_name" {
  type    = string
  default = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
}
variable "aws_ami_regions" {
  type    = list(string)
  default = ["eu-west-1"]
}
variable "aws_instance_type" {
  type    = string
  default = "m5.large"
}
variable "aws_run_tags" {
  type    = map(string)
  default = {}
}
variable "aws_tags" {
  type    = map(string)
  default = {}
}
variable "aws_force_deregister" {
  type    = bool
  default = false
}
variable "aws_force_delete_snapshot" {
  type    = bool
  default = false
}
variable "aws_region" {
  type    = string
  default = "${env("AWS_REGION")}"
}
variable "aws_vpc_id" {
  type    = string
  default = "${env("AWS_VPC_ID")}"
}
variable "aws_subnet_id" {
  type    = string
  default = "${env("AWS_SUBNET_ID")}"
}
variable "aws_volume_size" {
  type    = number
  default = 150
}
variable "aws_run_volume_tags" {
  type    = map(string)
  default = {}
}
variable "aws_associate_public_ip_address" {
  type    = bool
  default = false
}
variable "aws_ssh_username" {
  type    = string
  default = "ubuntu"
}
variable "aws_deprecate_after" {
  type    = string
  default = "4380h" # 4380 hours = 6 months
}

// Authentication related variables
variable "client_cert_path" {
  type    = string
  default = "${env("ARM_CLIENT_CERT_PATH")}"
}
variable "client_id" {
  type    = string
  default = "${env("ARM_CLIENT_ID")}"
}
variable "client_secret" {
  type      = string
  default   = "${env("ARM_CLIENT_SECRET")}"
  sensitive = true
}
variable "object_id" {
  type    = string
  default = "${env("ARM_OBJECT_ID")}"
}
variable "oidc_request_token" {
  type    = string
  default = ""
}
variable "oidc_request_url" {
  type    = string
  default = ""
}
variable "subscription_id" {
  type    = string
  default = "${env("ARM_SUBSCRIPTION_ID")}"
}
variable "tenant_id" {
  type    = string
  default = "${env("ARM_TENANT_ID")}"
}
variable "use_azure_cli_auth" {
  type    = bool
  default = false
}

// Azure environment related variables
variable "allowed_inbound_ip_addresses" {
  type    = list(string)
  default = []
}
variable "azure_tags" {
  type    = map(string)
  default = {}
}
variable "build_resource_group_name" {
  type    = string
  default = "${env("BUILD_RG_NAME")}"
}
variable "gallery_image_name" {
  type    = string
  default = "${env("GALLERY_IMAGE_NAME")}"
}
variable "gallery_image_version" {
  type    = string
  default = "${env("GALLERY_IMAGE_VERSION")}"
}
variable "gallery_name" {
  type    = string
  default = "${env("GALLERY_NAME")}"
}
variable "gallery_resource_group_name" {
  type    = string
  default = "${env("GALLERY_RG_NAME")}"
}
variable "gallery_storage_account_type" {
  type    = string
  default = "${env("GALLERY_STORAGE_ACCOUNT_TYPE")}"
}
variable "image_os_type" {
  type    = string
  default = "Linux"
}
variable "location" {
  type    = string
  default = ""
}
variable "managed_image_name" {
  type    = string
  default = ""
}
variable "managed_image_resource_group_name" {
  type    = string
  default = "${env("ARM_RESOURCE_GROUP")}"
}
variable "managed_image_storage_account_type" {
  type    = string
  default = "Premium_LRS"
}
variable "private_virtual_network_with_public_ip" {
  type    = bool
  default = false
}
variable "os_disk_size_gb" {
  type    = number
  default = null
}
variable "source_image_version" {
  type    = string
  default = "latest"
}
variable "temp_resource_group_name" {
  type    = string
  default = "${env("TEMP_RESOURCE_GROUP_NAME")}"
}
variable "virtual_network_name" {
  type    = string
  default = "${env("VNET_NAME")}"
}
variable "virtual_network_resource_group_name" {
  type    = string
  default = "${env("VNET_RESOURCE_GROUP")}"
}
variable "virtual_network_subnet_name" {
  type    = string
  default = "${env("VNET_SUBNET")}"
}
variable "vm_size" {
  type    = string
  default = "Standard_D4s_v4"
}
variable "winrm_username" {         // The username used to connect to the VM via WinRM
    type    = string                // Also applies to the username used to create the VM
    default = "packer"
}

// Image related variables
variable "dockerhub_login" {
  type    = string
  default = "${env("DOCKERHUB_LOGIN")}"
}
variable "dockerhub_password" {
  type    = string
  default = "${env("DOCKERHUB_PASSWORD")}"
}
variable "helper_script_folder" {
  type    = string
  default = "/imagegeneration/helpers"
}
variable "image_folder" {
  type    = string
  default = "/imagegeneration"
}
variable "image_os" {
  type    = string
  default = ""
}
variable "image_version" {
  type    = string
  default = "dev"
}
variable "imagedata_file" {
  type    = string
  default = "/imagegeneration/imagedata.json"
}
variable "installer_script_folder" {
  type    = string
  default = "/imagegeneration/installers"
}
variable "install_password" {
  type      = string
  default   = ""
  sensitive = true
}
variable "install_user" {
  type    = string
  default = "installer"
}
