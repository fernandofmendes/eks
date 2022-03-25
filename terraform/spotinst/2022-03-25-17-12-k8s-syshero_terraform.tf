provider "spotinst" {
  token = "<Place your Spotinst token here>"

  account = "act-164a6de9"
}

resource "spotinst_ocean_aws" "k8s-syshero" {
  name = "k8s-syshero"

  controller_id = "k8s-syshero"

  autoscaler {
   	resource_limits { 
    max_vcpu = 400

    max_memory_gib = 200
   	}
  }

  desired_capacity = 2

  min_size = 2

  max_size = 4

  subnet_ids = ["subnet-0786e7d3f44d4d487", "subnet-0c83539aa0cd3d69f"]

  whitelist = ["t2.medium", "t3.medium", "t3a.medium"]

  image_id = "ami-0e1b6f116a3733fef"

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU0xZWtORFFXTXJaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmVVMUVUWGxPVkVVMVRXcGplazlHYjFoRVZFMTVUVVJOZVUxcVJUVk5hbU42VDBadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUUzlHQ2swMFJtNHllVlJUY2tKclRteElkVEZxVjFseldUWktNVWh4TTNsYU5scEZVa0pKVTJVeVZuSXZVazFFWnlzeGFraDZZbXBrY0c1V1lURldjSGhXTVVzS2JHSkJjMDVvVFZGak5FUjBORXRZVGtSWU5YbEdNMDlQWVhSamVVSnZRbVpsWVROWksyVnVka1JTVW1vNFdsUlpSRUpZYUU5d2FGcHpaa3RPT1ZwUWVBcFRTME50WVVkV01GSkNVMWRRU1ZKeVpYY3JXVzFKUzA4MlZ5OWtNa2hQTUc5WlNIQTFSRk41WkRoUFNYcGlla05UTkc5MWQwaFZjRU5rUm5GRldDOTBDbVpYZG14d09Ia3JiM1F6UTBkcmNtTXlZMDVJZGtsbk5IQnNaekJSVERSd1NVZHBNM2wxYmpkTkwwWmxaRXd4UTBWVVp6SnZNVmx4VUVsQ2FFNTFaa3dLYVRaS1YyZHpkMGhQTjBsNmEzUnJVamh6U21aalpVSnRlbXhqZDNSblZqSXpTa3c0WjFsRFVISTBRazUwVkRsa2MxWnNOa04yY2tKT2NYZFliRTlIYlFwVEwwUllOSFJvUVVWS1oyODVjVEEyWlVWRlEwRjNSVUZCWVU1RFRVVkJkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMGhSV1VSV1VqQlBRa0paUlVaRFZrOVpWVUZ2Wm14bFJsTjFPWEZOZW14MkwyeHNOR1UxYnpOTlFUQkhRMU54UjFOSllqTUtSRkZGUWtOM1ZVRkJORWxDUVZGRE5FNXNhVlpsZUdGamNHSnFkbk54WTBodE16RlZiMDh3VDJWdE9FRXdOMEpuVWtadVZUYzBRbkpwVDJ3eFJFZDJWUXBHV1hWdFF6RTRUakpOWlhRMmIyaFZVRkpMTmxaNlZsUTJiRUpGTkcxUllXWkxNVlJ0ZWtKeFRIbHBWR1JpTUZaRlNYbENXR3hxYkc5U2NEbEliWFl6Q2tWRU5uZENaamRuYm10UVlVRXJiVU1yVFcxNFlVOURNVWN5VmxRd05FZFVOMVpCWnprMU0wOU9iSFJYWjFwNFlWRlRjMHh0VFVKMFUwRjRVU3MwY3pnS1FsazBPRWg0YjA1VllqWlNNamhEVjFWQlZGcHBSamc0VGxoMVoyZElSbEZhUW5Sa1lUUllibGc0YXpGWFV6STRWakp4VG5KRE1sSTRTa3BUTlM5a1dRcHVUR0ZWWjFka1RuaHlTVmcxZFhKYVNYYzBNMU53WlVaVVdYUkJlRFl2UVVGM01Wb3JaRFZrWVZoMVprbDNUUzl0UW1ONVFraFhkVXhJYVd4SVRUSm1DbVZhTDBSV09VVmpVelJJVTNaSldqWm9MMnRoZEVzeldFazJiSE5qTUdwUVZuQkpVd290TFMwdExVVk9SQ0JEUlZKVVNVWkpRMEZVUlMwdExTMHRDZz09CkFQSV9TRVJWRVJfVVJMPWh0dHBzOi8vQjc4OUQ2QkEzQjY4OUQzRkYxNTk1ODlFMTI1NDFFRUUuZ3I3LnVzLWVhc3QtMS5la3MuYW1hem9uYXdzLmNvbQpLOFNfQ0xVU1RFUl9ETlNfSVA9MTcyLjIwLjAuMTAKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIGs4cy1zeXNoZXJvIC0ta3ViZWxldC1leHRyYS1hcmdzICctLW5vZGUtbGFiZWxzPWVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cC1pbWFnZT1hbWktMGUxYjZmMTE2YTM3MzNmZWYsZWtzLmFtYXpvbmF3cy5jb20vY2FwYWNpdHlUeXBlPU9OX0RFTUFORCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9azhzLXN5c2hlcm8tbm9kZS1ncm91cCAtLW1heC1wb2RzPTE3JyAtLWI2NC1jbHVzdGVyLWNhICRCNjRfQ0xVU1RFUl9DQSAtLWFwaXNlcnZlci1lbmRwb2ludCAkQVBJX1NFUlZFUl9VUkwgLS1kbnMtY2x1c3Rlci1pcCAkSzhTX0NMVVNURVJfRE5TX0lQIC0tdXNlLW1heC1wb2RzIGZhbHNlCgotLS8vLS0="

  security_groups = ["sg-0a3f2b9bd578e6756", "sg-09fb6562488ee3c22"]

  iam_instance_profile = "eks-28bfe148-1af6-f6ad-33da-a2c3741d5c48"

  key_name = "k8s-syshero-key"

  tags {
    key = "eks:cluster-name"

    value = "k8s-syshero"
  }

  tags {
    key = "eks:nodegroup-name"

    value = "k8s-syshero-node-group"
  }

  tags {
    key = "k8s.io/cluster-autoscaler/enabled"

    value = "true"
  }

  tags {
    key = "k8s.io/cluster-autoscaler/k8s-syshero"

    value = "owned"
  }

  tags {
    key = "kubernetes.io/cluster/k8s-syshero"

    value = "owned"
  }

  tags {
    key = "Name"

    value = "k8s-syshero"
  }

  region = "us-east-1"
}