module "network" {
  source = "./dev/networking"
}

module "vm" {
  source     = "./dev/ec2"
  depends_on = [module.network]
}
