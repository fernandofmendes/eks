variable "cluster_name" {
  default = "k8s-syshero"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "k8s_version" {
  default = "1.21"
}

variable "nodes_instances_sizes" {
  default = [
    "t3a.medium"
  ]
}

variable "auto_scale_options" {
  default = {
    min     = 1
    max     = 5
    desired = 1
  }
}

variable "auto_scale_cpu" {
  default = {
    scale_up_threshold  = 80
    scale_up_period     = 60
    scale_up_evaluation = 2
    scale_up_cooldown   = 300
    scale_up_add        = 2

    scale_down_threshold  = 40
    scale_down_period     = 120
    scale_down_evaluation = 2
    scale_down_cooldown   = 300
    scale_down_remove     = -1
  }
}

variable "tags" {
  default = {
              BusinessUnit        = "syshero"
              ComplianceList      = ""
              ComplianceRequired  = false
              CriticalLevel       = 1
              Email               = "fernando.mendes@syshero.com.br"
              EscalationList      = "syshero"
              FilaIm              = "syshero"
              Product             = "Cluster EKS"
              Slack               = "syshero_syshero_pvt"
              Team                = "syshero"
              ApplicationRole    = "Cluster EKS"
            }
}

variable "project" {
  default = "k8s-syshero"
}

variable "aws_key_path" {
    description = "key_path"
    default     = "keys/syshero-eks.pub"
}


##
## Network
##

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "private_subnet_1a_cidr_block" {
  default = "10.0.32.0/20"
}
variable "private_subnet_1c_cidr_block" {
  default = "10.0.48.0/20"
}
  
variable "public_subnet_1a_cidr_block" {
  default = "10.0.0.0/20"
}
variable "public_subnet_1c_cidr_block" {
  default = "10.0.16.0/20"
}