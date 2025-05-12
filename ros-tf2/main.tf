variable "name" {
  type = string
  default = "demo2"
}

data "alicloud_vpcs" "vpc_ds" {
  vpc_name = var.name
}

output "first_vpc_id" {
  value = data.alicloud_vpcs.vpc_ds.vpcs[0].id
}
