resource "aws_instance" "my-aws_instance" {
  ami = var.ami_value
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

    root_block_device {
    volume_size = 15
    volume_type = "gp2"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get update -y
              sudo apt-get install -y docker-ce
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo docker run -d -p 8080:80 -e OPENPROJECT_SECRET_KEY_BASE=secret -e OPENPROJECT_HTTPS=false openproject/openproject:15
              EOF
  

  tags = {
    Name = "my-aws-instance"
  }
}