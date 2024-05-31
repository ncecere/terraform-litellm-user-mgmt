<!-- BEGIN_TF_DOCS -->
[![Document Version]({GITLAB\_URL}/-/badges/release.svg)]({GITLAB\_URL}/-/releases) [![Report a Problem](https://img.shields.io/badge/Report%20a%20Problem-%20-555)]({GITLAB\_URL}/issues/new) [![Edit Document](https://img.shields.io/badge/Edit%20Document-%20-555)]({GITLAB\_URL})

This documentation is maintained in GitLab and published to OneWiki.  Any Changes made in OneWiki directly will be over written.

---

## Examples

**Simple**

```bash
module "usr_mgmt" {
  source     = "../.."
  url        = "<LITELLM_URL>"
  token      = "<LITELLM_TOKEN>"
  user_id    = "<USER_ID>"
  user_email = "<USER_EMAIL>"
  max_budget = 15
  models     = [
    "list", 
    "of", 
    "models"
  ]

}

# Available User Outputs
output "timtim" {
  value = module.usr_mgmt.user_response
}

output "timtim_data" {
  value = module.usr_mgmt.user_data
}

# Available Key Outputs
output "key" {
  value = module.usr_mgmt.key
}

output "key_data" {
  value = module.usr_mgmt.key_data
}

output "key_res" {
  value = module.usr_mgmt.key_response
}
```

---

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_key"></a> [auto\_create\_key](#input\_auto\_create\_key) | Should a key be created for the user durring user creation | `bool` | `false` | no |
| <a name="input_budget_duration"></a> [budget\_duration](#input\_budget\_duration) | Budget duration befor reseting. | `string` | `"30d"` | no |
| <a name="input_duration"></a> [duration](#input\_duration) | Howlong the key should last before expiring | `string` | `"365d"` | no |
| <a name="input_key_alias"></a> [key\_alias](#input\_key\_alias) | Alias for the user provided key | `string` | `null` | no |
| <a name="input_max_budget"></a> [max\_budget](#input\_max\_budget) | Maximum monthly budget assigned to the user and there personal keys | `number` | `0` | no |
| <a name="input_max_parallel_requests"></a> [max\_parallel\_requests](#input\_max\_parallel\_requests) | Maximum parallel requests that a user/key can perform | `number` | `100` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Metadata to assign to USER/KEY | `map(string)` | `{}` | no |
| <a name="input_model_max_budget"></a> [model\_max\_budget](#input\_model\_max\_budget) | n/a | `map(string)` | `{}` | no |
| <a name="input_models"></a> [models](#input\_models) | Models assigned directly to the user and there personal keys | `list(string)` | <pre>[<br>  "fake_model"<br>]</pre> | no |
| <a name="input_rpm_limit"></a> [rpm\_limit](#input\_rpm\_limit) | Requests per minute for the user and there personal keys | `number` | `1000` | no |
| <a name="input_spend"></a> [spend](#input\_spend) | Set how much has been spent by the USER/KEY | `number` | `0` | no |
| <a name="input_team_id"></a> [team\_id](#input\_team\_id) | Team ID to assign to USER/KEY | `string` | `null` | no |
| <a name="input_token"></a> [token](#input\_token) | Token issued from AI Gateway with permission to create/add users | `string` | n/a | yes |
| <a name="input_tpm_limit"></a> [tpm\_limit](#input\_tpm\_limit) | Tokens per minute for the user and there personal keys | `number` | `100000` | no |
| <a name="input_url"></a> [url](#input\_url) | URL for Litellm | `string` | n/a | yes |
| <a name="input_user_alias"></a> [user\_alias](#input\_user\_alias) | Alias for the user | `string` | `null` | no |
| <a name="input_user_email"></a> [user\_email](#input\_user\_email) | email address for user EPPN | `string` | n/a | yes |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | EPPN for user | `string` | n/a | yes |
| <a name="input_user_max_budget"></a> [user\_max\_budget](#input\_user\_max\_budget) | Maximum monthly budget assigned to the user and there personal keys | `number` | `0` | no |
| <a name="input_user_models"></a> [user\_models](#input\_user\_models) | Models assigned directly to the user and there personal keys | `list(string)` | <pre>[<br>  "fake_model"<br>]</pre> | no |
| <a name="input_user_role"></a> [user\_role](#input\_user\_role) | Specify a user role - 'admin', 'app\_owner', 'app\_user' | `string` | `"app_user"` | no |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_key_mgmt"></a> [key\_mgmt](#module\_key\_mgmt) | ./modules/key | n/a |
| <a name="module_user_mgmt"></a> [user\_mgmt](#module\_user\_mgmt) | ./modules/user | n/a |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key"></a> [key](#output\_key) | n/a |
| <a name="output_key_data"></a> [key\_data](#output\_key\_data) | n/a |
| <a name="output_key_response"></a> [key\_response](#output\_key\_response) | n/a |
| <a name="output_user_data"></a> [user\_data](#output\_user\_data) | n/a |
| <a name="output_user_response"></a> [user\_response](#output\_user\_response) | n/a |

## Providers

No providers.

Below is an example of how to configure the provider.

```bash
/* -------------------------------------------------------------------------- */
/*                             INCLUEDED IN MODULE                            */
/* -------------------------------------------------------------------------- */

/* ----------------------------- NOT NEEDED HERE ---------------------------- */
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_restapi"></a> [restapi](#requirement\_restapi) | 1.19.1 |
| <a name="requirement_terracurl"></a> [terracurl](#requirement\_terracurl) | 1.2.1 |

Below is an example of how to configure the requirements.

```bash
terraform {
  required_providers {
    restapi = {
      source  = "Mastercard/restapi"
      version = "1.19.1"
    }
    terracurl = {
      source  = "devops-rob/terracurl"
      version = "1.2.1"
    }
  }
}
```

## Resources

No resources.
<!-- END_TF_DOCS -->