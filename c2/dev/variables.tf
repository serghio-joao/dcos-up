### Lets set some global variables  

### project name
#variable "infra_name" {
#  default = "serghios_mesos"
#}

### default region
variable "region" {
  default = "eu-west-1"
}

### set amis suitable for mesos
variable "ami_ids" {
  default {
    us-east-1 = "ami-6d1c2007"
    us-west-1 = "ami-af4333cf"
    us-west-2 = "ami-d2c924b2"
    eu-west-1 = "ami-7abd0209"
  }
}

variable "bootstrap_port" {
  default = "10000"
}

variable "instance_types" {
  default = {
    bootstrap    = "m4.2xlarge"
    master       = "m4.2xlarge"
    slave        = "m4.2xlarge"
    slave_public = "m4.2xlarge"
  }
}

variable "instance_counts" {
  default = {
    master       = 1
    slave        = 2
    slave_public = 1
  }
}

variable "provisioner" {
  default = {
    username = "centos"
    key_name = "mesos-key"
    keys_dir = "/Users/$user/.ssh"
    directory = "/home/centos/provisioner" # we need to survive reboots
  }
}
