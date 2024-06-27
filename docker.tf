# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Terraform configuration

# import {
# 	id = "b46e9a59a3c5453a9c80e8ad8809c4f0fbd6a69d57f90d0c32bfc4ea8aab2134"

# 	# https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container
# 	to = resource.docker_container.web
# }

# If we justa add this import block and run tf plan we'll get this error:
# $ terraform plan
# ╷
# │ Error: Configuration for import target does not exist
# │
# │   on docker.tf line 10, in import:
# │   10:         to = resource.docker_container.web
# │
# │ The configuration for the given import target docker_container.web does not exist. If you wish to automatically generate config for this resource, use the -generate-config-out
# │ option within terraform plan. Otherwise, make sure the target resource exists within your configuration. For example:
# │
# │   terraform plan -generate-config-out=generated.tf
# ╵

# After adjusting auto-generated resource to have only required attributes
# we can run terraform apply after which we can test that docker container is
# still running: http://localhost:8080/ should show Welcome to nginx! page.

resource "docker_image" "nginx" {
	name = "nginx:latest"
}