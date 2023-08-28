# terraform-provider-axent
Terraform provider boilerplate with Go and Docker

## Snippets

Some useful snippets to take a look at:

1. provider binary path in `services/tf-agent/Dockerfile` - please check to see where to place the binary with a custom Terraform provider
2. terraform `.terraformrc` configuration - please check to see how to configure so that the Terraform will not try to pull the provider from the Internet location
3. go Makefile build option `CGO_ENABLED=0` - for static build of the custom provider

## Usage

```sh
docker-compose up --build
```