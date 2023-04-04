# This file is part of Terramate Configuration.
# Terramate is an orchestrator and code generator for Terraform.
# Please see https://github.com/mineiros-io/terramate for more information.
#
# To generate/update Terraform code within the stacks
# run `terramate generate` from root directory of the repository.

##############################################################################
# Generate '_terramate_generated_providers.tf' in each stack
# All globals will be replaced with the final value that is known by the stack
# Any terraform code can be defined within the content block
generate_hcl "_terramate_generated_providers.tf" {
  content {
    terraform {
      required_providers {
        azurerm = {
          source = "hashicorp/azurerm"
          version = ">= ${global.terraform_azure_provider_version}"
        }
      }
    }
    # the default values of globals are defined in config.tm.hcl in this directory
    provider "azurerm" {
      features {
        key_vault {
          purge_soft_delete_on_destroy = false
        }
      }
      environment = "usgovernment"
      skip_provider_registration = true
    }

    
  }
}
