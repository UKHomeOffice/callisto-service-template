# callisto-service-template

Template for Callisto service projects

# Callisto setup

Within the template you will see 'REPLACE-SERVICE-NAME'. Every occurrence of these needs to be
replaced with the new service name.

Within application.properties & Dockerfile you will find 'REPLACE-SERVICE-PORT'. This needs to be
replaced with the port the new service is exposing.

## Drone Secrets

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
-

## Variables to replace

REPLACE-SERVICE-NAME

REPLACE-LOCAL-PORT

REPLACE-QUAY-REPO
