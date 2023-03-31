provider "scaleway" {
  zone   = "fr-par-1"
  region = "fr-par"
}

module "***" {
  source = "../modules/scaleway-instance/"

  instance_name = "***"
  ssh_keys      = ["***"]
  tags          = ["***"]
  packages      = ["nodejs", "composer", "yarn"]
}
