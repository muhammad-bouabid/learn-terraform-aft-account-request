module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "muhammad.bouabid92+secondAccount@gmail.com"
    AccountName               = "secondAccount"
    ManagedOrganizationalUnit = "Managment-Custom-OU"
    SSOUserEmail              = "muhammad.bouabid92+secondAccount@gmail.com"
    SSOUserFirstName          = "secondAccount firstName"
    SSOUserLastName           = "secondAccount lastName"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
