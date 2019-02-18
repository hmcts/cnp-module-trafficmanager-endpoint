# cnp-module-trafficmanager-endpoint
Terraform Module for creating an additional Traffic Manager Endpoint.

## Variables

Names | Type | Required | Description
--- | --- | --- | --- |
`backend_name` | String | Yes | Name of the backend
`backend_pip` | String | Yes | Public ip of the backend
`public_hostname` | String | Yes | The public hostanme to use when accessing app frontend
`priority` | String | Yes | Priority of the backend
`product` | String | Yes | The name of your application
`env` | String | Yes | The deployment environment (sandbox, aat, prod etc..)
`common_tags` | Maps | Yes | Common tags
`resource_group` | String | Yes | Name of the resource group

## Usage

```terraform
module "trafficManagerProfile" {
  source                  = "git@github.com:hmcts/cnp-module-trafficmanager"
  backend_name            = "${local.backend_name}"
  backend_pip             = "${data.null_data_source.waf-pip.outputs["pip"]}"
  public_hostname         = "${var.public_hostname}"
  priority                = "3"
  product                 = "${var.product}"
  env                     = "${var.env}"
  common_tags             = "${var.common_tags}"
  resource_group          = "${azurerm_resource_group.shared_resource_group.name}"
}

```