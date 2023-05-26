
resource "aws_instance" "app_server" {
  ami           = "ami-475387846698979"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
