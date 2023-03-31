resource "scaleway_instance_ip" "public_ip" {
  project_id = var.project_id
}

resource "scaleway_instance_security_group" "www" {
  project_id              = var.project_id
  inbound_default_policy  = "drop"
  outbound_default_policy = "accept"

  dynamic "inbound_rule" {
    for_each = var.sg_ingress_ports
    content {
      action = "accept"
      port   = inbound_rule.value
    }
  }
}

resource "scaleway_instance_server" "web" {
  name       = var.instance_name
  project_id = var.project_id
  type       = var.instance_type
  image      = "ubuntu_jammy"

  tags = var.tags

  ip_id = scaleway_instance_ip.public_ip.id

  security_group_id = scaleway_instance_security_group.www.id
  cloud_init        = templatefile("${path.module}/templates/cloud-init.tpl", { ssh_keys = var.ssh_keys, packages = var.packages })
}
