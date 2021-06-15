module "vpc" {
    source  = "app.terraform.io/guanruhuang-training/network/google"
    version = "3.2.2"
    # insert required variables here

    project_id   = var.project
    network_name = "gaurav-network2"
    routing_mode = "GLOBAL"

    subnets = [
    {
        subnet_name   = "gaurav-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
    ]
}