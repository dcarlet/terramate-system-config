globals {
    # Define the global variables in use in shared Services/prod for now.
    environment = "prod" #also update default_tags to match!!
    # This is the default resource group.
    default_rg = "placeholder_rg_sharedServices_test"
    # This is the resource group our vnets are located in.
    net_rgp_name = "placeholder_rg_sharedServices_test"
    # The name for the common vnet.
    common_vnet_name = "placeholder_vnet_sharedServices_test"
    # AKS subnet of common vnet
    cmn_aks_snet_name = "placeholder_snet_sharedServices_AKS_SNT_01"
    cmn_cmn_snet_name = "placeholder_snet_sharedServices_CMN_SNT_01"
    cmn_vdi_snet_name = "placeholder_snet_sharedServices_VDI"
    cmn_appgw_snet_name = "placeholder_snet_sharedServices_AGW_SNT_01"
    cmn_dmz_snet_name = ""
    cmn_endpoints_snet_name = "placeholder_snet_sharedServices_CMN_SNT_01"
    cmn_postgres_snet_name = "placeholder_snet_sharedServices_FLXSVR_SNT_01"
    cmn_bastion_snet_name = ""
    location = "usgovvirginia"
    workspace_keyvault_name = "AZ_placeholder_KV"
    workspace_name = "placeholder"
    workspace_name_abv = "cp"
    cloud_provider_abv = "AZ"
    internal_dns = "prod.local"
    external_dns = "placeholder.com"
    default_tags = {
        CREATED_BY = "TERRAFORM"
        ZONE = "prod"
    }
    terraform_azure_provider_version = "3.50"
    default_state_path = "terraform.tfstate"
}
