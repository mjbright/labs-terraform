
output "bridged_ip" {
  # You need to complete the below expression:
  value = docker_container.demo1.network_data[0].ip_address
}

# Similar to previous 'connect' output, but connects on container ip, not localhost:
output "connect_c" {
  value = "Connect to the container using the command\n\t'curl -L ${ docker_container.demo1.network_data[0].ip_address }:80'"
}

