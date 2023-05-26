
resource "aws_instance" "app_server" {
  ami           = "ami-4753878466"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
