module "network" {
  source = "./modules/network"
  
  project                       = var.project
  tags                          = var.tags

  cluster_name                  = var.cluster_name
  aws_region                    = var.aws_region

  vpc_cidr_block                = var.vpc_cidr_block

  private_subnet_1a_cidr_block  = var.private_subnet_1a_cidr_block
  private_subnet_1c_cidr_block  = var.private_subnet_1c_cidr_block
  
  public_subnet_1a_cidr_block   = var.public_subnet_1a_cidr_block
  public_subnet_1c_cidr_block   = var.public_subnet_1c_cidr_block
}

module "master" {
  source = "./modules/master"

  project                  = var.project
  tags                     = var.tags

  cluster_name  = var.cluster_name
  aws_region    = var.aws_region
  k8s_version   = var.k8s_version

  cluster_vpc   = module.network.cluster_vpc
  private_subnet_1a   = module.network.private_subnet_1a
  private_subnet_1c   = module.network.private_subnet_1c
}

module "nodes" {
  source = "./modules/nodes"

  project                  = var.project
  tags                     = var.tags
  
  cluster_name        = var.cluster_name
  aws_region          =  var.aws_region
  k8s_version         = var.k8s_version

  key_name            = aws_key_pair.cluster_key.key_name

  cluster_vpc         = module.network.cluster_vpc
  private_subnet_1a   = module.network.private_subnet_1a
  private_subnet_1c   = module.network.private_subnet_1c

  eks_cluster         = module.master.eks_cluster
  eks_cluster_sg      = module.master.security_group

  nodes_instances_sizes   = var.nodes_instances_sizes
  auto_scale_options      = var.auto_scale_options

  auto_scale_cpu     = var.auto_scale_cpu
}
