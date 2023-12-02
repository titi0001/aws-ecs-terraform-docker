module "prod" {
  source = "../../infra"

  nome_repo = "producao"
  cargoIAM = "producao"
}

output "IP_alb" {
  value = module.prod.IP
}