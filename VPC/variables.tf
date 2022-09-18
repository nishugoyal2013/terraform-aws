variable "secret_key" {
    type = string
}

variable "access_key" {
    type = string
}

variable "vpc" {
  type = list(object({
    name = string
    cidr_block = string
    instance_tenancy = string
    enable_dns_support = string
  }))
}

variable "subnet" {
    type = list(object({
        vpc_name = string
        name = string
        cidr_block = string
    }))
}

variable "igw" {
    type = list(object({
        vpc_name = string
        name = string
    }))
}

variable "eip" {
    type = list(object({
        vpc = bool
        name = string
    }))
}

variable "ngw" {
    type = list(object({
        eip_name = string
        subnet_name = string
        name = string
    }))
}

variable "sg" {
    type = list(object({
        vpc_name = string
        name = string
    }))
}

variable "rt" {
    type = list(object({
        name = string
        vpc_name = string
    }))
}

variable "ec2" {
    type = object({
        name = string
        instance_type = string
        associate_public_ip_address = bool
        key_name = string
        cpu_credits = string
    })
}