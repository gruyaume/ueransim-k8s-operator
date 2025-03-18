# Copyright 2024 Guillaume Belanger
# See LICENSE file for licensing details.

resource "juju_application" "ueransim" {
  name  = var.app_name
  model = var.model

  charm {
    name     = "ueransim-k8s"
    channel  = var.channel
    revision = var.revision
    base     = var.base
  }

  config      = var.config
  constraints = var.constraints
  resources   = var.resources
  trust       = true
  units       = var.units
}
