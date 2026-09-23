packer {
  required_plugins {
    azure = {
      source  = "github.com/hashicorp/azure"
      version = "2.2.1"
    }
    amazon = {
      source = "github.com/hashicorp/amazon"
      version = "1.3.2"
    }
  }
}
