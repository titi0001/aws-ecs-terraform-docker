module "prod" {
  source = "../../infra"

  nome_repo = "producao"
  cargoIAM  = "producao"
  ecsEnv    = "producao"
  ambiente  = "producao"
}

output "IP_alb" {
  value = module.prod.IP
}
