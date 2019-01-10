variable "namespace" {
  type = "string"
}

variable "stage" {
  type = "string"
}

variable "name" {
  type = "string"
}

variable "delimiter" {
  type    = "string"
  default = "-"
}

variable "attributes" {
  type    = "list"
  default = []
}

variable "tags" {
  type    = "map"
  default = {}
}
