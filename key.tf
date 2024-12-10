# Define thekey pair for SSH access
resource "aws_key_pair" "my_key" {
  key_name   = "cr"
  public_key = file("/Users/joseph/Downloads/cr")
}
