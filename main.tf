provider aws {
    region = "us-east-2"
}

resource aws_instance web {
    ami           = "ami-08221e706f343d7b7"
    instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "kaizen-shirina"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}