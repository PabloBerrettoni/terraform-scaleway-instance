variable "instance_type" {
  type    = string
  default = "instance-type"
}

variable "ssh_keys" {
  type = list(string)
}

variable "packages" {
  type = list(string)
}

variable "sg_ingress_ports" {
  type    = list(string)
  default = ["80", "443", "22"]
}

variable "tags" {
  type = list(string)
}

variable "instance_name" {
  type = string
}

variable "project_id" {
  type    = string
  default = "project-id"
}

variable "sshPort" {
  type    = number
  default = "22"
}

variable "httpPort" {
  type    = number
  default = "80"
}

variable "httpsPort" {
  type    = number
  default = "443"
}
