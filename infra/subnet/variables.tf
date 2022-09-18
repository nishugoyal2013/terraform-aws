variable "subnet" {
  type = list(object({
    vpc_name = string
    name = string
    cidr_block = string
  }))
}