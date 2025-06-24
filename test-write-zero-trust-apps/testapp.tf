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