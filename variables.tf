variable "backend_name" {
  type        = "string"
  description = "Name of the backend"
}

variable "backend_pip" {
  type        = "string"
  description = "Public ip of the backend"
}


variable "public_hostname" {
  type = "string"
  description = "The public hostanme to use when accessing app frontend"
}

variable "priority" {
  type = "string"
  description = "Priority of the backend"
}

variable "product" {
  type        = "string"
  description = "The name of your application"
}

variable "env" {
  type        = "string"
  description = "The deployment environment (sandbox, aat, prod etc..)"
}

variable "common_tags" {
  type = "map"
}


variable "resource_group" {
  type        = "string"
  description = "Name of the resource group"
}