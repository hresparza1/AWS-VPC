variable "AWS_ACCESS_KEY"{}
variable "AWS_SECRET_KEY"{}
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
    type = "map"
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-fa4b27ec" # ubuntu 16.04 LTS
    }
}