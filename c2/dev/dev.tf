# Configure the AWS Provider

provider "aws" {
  region                   = "us-east-2"
  shared_credentials_file  = "/Users/morty/.aws/credentials"
  profile                  = "default"
}

# Lets call some modules

module "security_group" { 
  source = "./modules/security_groups/" 
  project_name = "serghio_mesos"

}
