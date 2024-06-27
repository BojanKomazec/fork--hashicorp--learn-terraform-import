# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "b46e9a59a3c5453a9c80e8ad8809c4f0fbd6a69d57f90d0c32bfc4ea8aab2134"
resource "docker_container" "web" {
  env                                         = []
  # image                                       = "sha256:e0c9858e10ed8be697dc2809db78c57357ffc82de88c69a3dee5d148354679ef"
  image = resource.docker_image.nginx.image_id
  name                                        = "hashicorp-learn"
  network_mode                                = "bridge"
  ports {
    external = 8081
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
}
