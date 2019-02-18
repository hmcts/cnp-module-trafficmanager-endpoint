# cnp-module-trafficmanager-endpoint
Terraform Module for creating an additional Traffic Manager Endpoint.

## Variables

Names | Type | Required | Description
--- | --- | --- | --- |
`backend_name` | String | Yes | name of the backend


## Usage

```terraform
module "trafficManagerProfile" {
  source                  = "git@github.com:hmcts/cnp-module-trafficmanager-endpoint"

}

```