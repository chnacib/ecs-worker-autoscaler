module "deploy_stack" {
    source = "../"
    bucket_name = "my-new-bucket-name"
    region = "us-east-1"
}