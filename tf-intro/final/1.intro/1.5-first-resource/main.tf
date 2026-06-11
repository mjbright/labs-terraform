
# Create a file from a simple string value (without a LF/CR at the end)
resource "local_file" "basic" {
  content  = "a simple string"
  filename = "${path.module}/basic.txt"
}

