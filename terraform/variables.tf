# Copyright 2024 Guillaume Belanger
# See LICENSE file for licensing details.

variable "app_name" {
  description = "Name of the application in the Juju model."
  type        = string
  default     = "ueransim"
}

variable "channel" {
  description = "The channel to use when deploying a charm."
  type        = string
  default     = "latest/edge"
}

variable "config" {
  description = "Application config. Details about available options can be found at https://charmhub.io/ueransim-k8s-operator/configure."
  type        = map(string)
  default     = {}
}

variable "constraints" {
  description = "Juju constraints to apply for this application."
  type        = string
  default     = "arch=amd64"
}

variable "model" {
  description = "Reference to the Juju model to deploy application to."
  type        = string
  default     = ""
}

variable "resources" {
  description = "Resources to use with the application. Details about available options can be found at https://charmhub.io/ueransim-k8s/configure."
  type        = map(string)
  default     = {}
}

variable "revision" {
  description = "Revision number of the charm"
  type        = number
  default     = null
}

variable "base" {
  description = "The operating system on which to deploy"
  type        = string
  default     = "ubuntu@24.04"
}

variable "units" {
  description = "Number of units to deploy"
  type        = number
  default     = 1

  validation {
    condition     = var.units == 1
    error_message = "Scaling is not supported for this charm."
  }

}
