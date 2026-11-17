provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical (Ubuntu)

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "k8s_node" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.medium"
  key_name                    = "maddock7"
  associate_public_ip_address = true

    root_block_device {
    volume_type = "gp3"       #  Switch from gp2 to gp3
    volume_size = 8          # e.g., 30 GB
    iops        = 3000        # Optional: Customize if needed
    throughput  = 125         # Optional: MB/s, default baseline
  }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y apt-transport-https ca-certificates curl software-properties-common gnupg2

              # Install Docker
              curl -fsSL https://get.docker.com | bash
              usermod -aG docker ubuntu
              systemctl enable docker
              systemctl start docker

              # Install kubectl (latest)
              curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
              install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
              rm -f kubectl

              # Install Minikube (latest)
              curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
              install minikube-linux-amd64 /usr/local/bin/minikube
              rm minikube-linux-amd64

              # Allow minikube to run with Docker
              su - ubuntu -c "minikube start --driver=docker"
              EOF

  tags = {
    Name = "ubuntu-k8s-docker"
  }
}
output "ubuntu_ami_id" {
  value = data.aws_ami.ubuntu.id
}

