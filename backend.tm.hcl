
# This file is part of Terramate Configuration.
# Terramate is an orchestrator and code generator for Terraform.
# Please see https://github.com/mineiros-io/terramate for more information.
#
# To generate/update Terraform code within the stacks
# run `terramate generate` from root directory of the repository.

##############################################################################
# Generate '_terramate_generated_backend.tf' in each stack
# All globals will be replaced with the final value that is known by the stack
# Any terraform code can be defined within the content block
generate_hcl "_terramate_generated_backend.tf" {
  content {
    terraform {
      ## This is a placeholder, need to eventually replace this with something that integrates with Gitlab TF state
      backend "local" {
        path = global.default_state_path
      }
    }
  }
}
