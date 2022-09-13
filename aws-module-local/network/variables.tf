variable "cidr_vpc" {
  description = "Cidr block para Vpc."
  type        = string
}

variable "cidr_subnet" {
  description = "Cidr block para subnet."
  type        = string
}

variable "environment" {
  description = "Ambiente onde o recurso vai ser utilizado."
  type        = string
}