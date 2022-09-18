variable "sg" {
  type = list(object({
    vpc_name = string
    name = string
  }))
  
}