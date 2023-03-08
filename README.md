# callisto-service-template

Template for Callisto service projects

# Callisto setup

## Placeholders to replace

Within the template you will see the following placeholders. Every occurrence of these needs to be
replaced as described in the table below.

| Placeholder          | Description                          | Location                              | Example of replacement value |
|----------------------|--------------------------------------|---------------------------------------|------------------------------|
| REPLACE-SERVICE-NAME | the name of the service              | everywhere                            | callisto-timecard-restapi    |
| REPLACE-SERVICE-PORT | the port the new service is exposing | application.properties<br/>Dockerfile | 9090                         |
| REPLACE-LOCAL-PORT   | the port for local dev               | docker-compose.yml                    | 50100                        |
| REPLACE-QUAY-REPO    | the repo name in Quay                | .drone.yml                            | callisto-timecard-restapi    |

## Drone secrets

The following secrets will need adding to Drone. Details for finding secrets are in [Confluence](https://collaboration.homeoffice.gov.uk/display/EAHW/How+to).

- `drone_token` - ??
- `quay_robot_name` - ??
- `quay_robot_token` - ??
- `sonar_cloud_host`
- `sonar_cloud_token`
- `notprod_kube_api_certificate`
- `not_prod_kube_api_url`
- `dev_kube_token`
- `test_kube_token` - not PR
- `prod_kube_api_certificate` - not pr
- `prod_kube_api_url` - not pr
- `prod_kube_token` - not pr
- `slack_webhook_url`
- `slack_urgent_webhook_url`

