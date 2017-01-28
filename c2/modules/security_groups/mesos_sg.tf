### Allow ssh access

resource "aws_security_group" "default_ssh_access" {
  name = "${var.project_name}_default_ssh_access"
  description = "Allow all ssh access"
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "mesos"
    env = "dev"
  }
}

### Allow consule communication

resource "aws_security_group" "consul_member" {
  name = "${var.project_name}_consul_member"
  description = "Consul member"
  tags {
    Name = "mesos"
    env = "dev"
  }
  ingress {
    from_port = 8300
    to_port = 8302
    protocol = "tcp"
    self = true
  }
  ingress {
    from_port = 8300
    to_port = 8302
    protocol = "udp"
    self = true
  }
  ingress {
    from_port = 8400
    to_port = 8400
    protocol = "tcp"
    self = true
  }
  ingress {
    from_port = 8400
    to_port = 8400
    protocol = "udp"
    self = true
  }
  ingress {
    from_port = 8500
    to_port = 8500
    protocol = "tcp"
    self = true
  }
  ingress {
    from_port = 8600
    to_port = 8600
    protocol = "tcp"
    self = true
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
