# Default tags
variable "default_tags" {
  default = {}
  type    = map(any)

}


# Name prefix
variable "prefix" {
  type = string
}


variable "env" {
  type = string
}


variable "region" {
  type = string
}


variable "vpc_id"{
  type =string
}
