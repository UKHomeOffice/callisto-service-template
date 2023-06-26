# callisto-service-template

Template for Callisto service projects

# Callisto setup

## Placeholders to replace

Within the template you will see the following placeholders. Every occurrence of these needs to be
replaced as described in the table below.

| Placeholder            | Description                          | Location                              | Example of replacement value |
|------------------------|--------------------------------------|---------------------------------------|-----------------------------|
| REPLACE-SERVICE-NAME   | the name of the service              | everywhere                            | callisto-timecard-restapi   |
| REPLACE-SERVICE-PORT   | the port the new service is exposing | application.properties<br/>Dockerfile | 9090                        |
| REPLACE-LOCAL-PORT     | the port for local dev               | docker-compose.yml                    | 50100                       |
| REPLACE-QUAY-REPO      | the repo name in Quay                | .drone.yml                            | callisto-timecard-restapi   |
| REPLACE-TOPIC-NAME     | the kafka topic name                 | helm value files                      | callisto-timecard-timeentries|
| REPLACE-KAFKA-IDENTITY | the kafka msk_identity               | helm value files                      | timecard-restapi|


## Rename java package/application name

Rename default package `uk.gov.homeoffice.digital.sas.callistoservice` to suit your requirements both under `main` and `test`

Rename and modify application `CallistoServiceApplication` to suit your requirements

## Setup SonarCloud project

Follow steps [here](https://collaboration.homeoffice.gov.uk/pages/viewpage.action?pageId=206901590) 

## Drone secrets

The following secrets will need adding to Drone. Details for finding secrets are in [Confluence](https://collaboration.homeoffice.gov.uk/display/EAHW/How+to).

- `drone_token` - not pr enabled
- `quay_robot_name`
- `quay_robot_token`
- `sonar_cloud_host`
- `sonar_cloud_token`
- `notprod_kube_api_certificate`
- `notprod_kube_api_url`
- `dev_kube_token`
- `test_kube_token` - not pr enabled
- `prod_kube_api_certificate` - not pr enabled
- `prod_kube_api_url` - not pr enabled
- `prod_kube_token` - not pr enabled
- `slack_webhook_url` - not pr enabled
- `slack_urgent_webhook_url` - not pr enabled

## <a name="headAllRepo"></a> All Callisto repositories

- https://github.com/UKHomeOffice/callisto-accruals-restapi
- https://github.com/UKHomeOffice/callisto-balance-calculator
- https://github.com/UKHomeOffice/callisto-person-restapi
- https://github.com/UKHomeOffice/callisto-timecard-restapi
- https://github.com/UKHomeOffice/callisto-accruals-person-consumer
- https://github.com/UKHomeOffice/callisto-auth-keycloak
- https://github.com/UKHomeOffice/callisto-build-github
- https://github.com/UKHomeOffice/callisto-kafka-commons
- https://github.com/UKHomeOffice/callisto-devops
- https://github.com/UKHomeOffice/callisto-docs
- https://github.com/UKHomeOffice/callisto-helm-charts
- https://github.com/UKHomeOffice/callisto-ingress-nginx
- https://github.com/UKHomeOffice/callisto-jparest
- https://github.com/UKHomeOffice/callisto-localdev
- https://github.com/UKHomeOffice/callisto-postman-collections
- https://github.com/UKHomeOffice/callisto-service-template
- https://github.com/UKHomeOffice/callisto-ui
- https://github.com/UKHomeOffice/callisto-ui-nginx

