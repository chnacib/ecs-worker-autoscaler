module "deploy_stack" {
    source = "../"
    bucket_name = "teste-workerautoscaler"
    region = "us-east-1"
}