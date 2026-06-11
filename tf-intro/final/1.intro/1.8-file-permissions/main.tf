
variable "test" {
  default = "a test string"
}

# Create a file from a simple string value (without a LF/CR at the end)
#
resource "local_file" "basic" {
  content  = "a simple string"
  filename = "${path.module}/read-only/basic.txt"

  directory_permission = "0750"
  file_permission      = "0740"
}

# Create a file from a multi-line string value (with embedded '\n' line feeds)
#
resource "local_file" "basic-mline" {
  source   = "/etc/hosts"
  filename = "${path.module}/basic-mline.txt"
}

# Create a file from a multi-line string specified as a "HERE" document
#
# Note: use of the "<<" operator:
#
resource "local_file" "basic-mline-here" {
  content  = <<EMBEDDED
    A text block
    The value of var.test='\${var.test}'
EMBEDDED
  filename = "${path.module}/basic-mline-here.txt"
}

# Create a file from a multi-line string specified as a "HERE" document:
#
# Note: use of the "<<-" operator, causing leading indentation to be ignored:
#
resource "local_file" "basic-mline-here-aligned" {
  content  = <<-EMBEDDED
    A text block
    The value of var.test='\${var.test}'
EMBEDDED
  filename = "${path.module}/basic-mline-here-aligned.txt"
}

