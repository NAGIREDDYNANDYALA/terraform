variable "vpc_cidr" {
  default = "10.20.0.0/16"
  type    = string
}
variable "subnet_cidrs" {
  default = ["10.20.0.0/24", "10.20.1.0/24", "10.20.2.0/24"]
  type    = list(string)
}
variable "azs" {
    default = ["ap-southeast-2a","ap-southeast-2b","ap-southeast-2c"]
    type = list(string)  
}