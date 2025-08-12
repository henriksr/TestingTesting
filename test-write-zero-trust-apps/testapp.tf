# Added comment here
module "app-name-use-name-with-dash-for-whitespace" {
  source   = "./modules/app"
  app_name = "app name free formatting"
  destinations = [
    {
      type       = "private"
      uri        = "IP.addr:3389"
      cidr       = "IP.addr"
      port_range = "3389"
    },
    {
      type       = "private"
      uri        = "IP.addr:1433"
      cidr       = "IP.addr"
      port_range = "1433"
    },
  ]
  policies = [var.POC_IT, var.POC_Common]
}

#INC-127783 Nprinting 
module "nprinting-qs" {
  source   = "../../modules/zta"
  app_name = "nprinting qs"
  destinations = [
    {
      type       = "private"
      uri        = "37.123.134.114:4993"
      cidr       = "37.123.134.114"
      port_range = "4993"
    },
   
  ]
  policies = [var.POC_IT, var.POC_Common]
}

