module "app" {
  source         = "../../../modules/app-asg"
  ami            = "ami-123123123"
  instance_count = 12
}