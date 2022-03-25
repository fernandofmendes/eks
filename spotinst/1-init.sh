#!/usr/bin/env bash
curl -fsSL http://spotinst-public.s3.amazonaws.com/integrations/kubernetes/cluster-controller/scripts/init.sh | \
SPOTINST_TOKEN=c1a873885fef8cea39dd3df1f53e9cc0045597abfeacd91b2943a8801d473666 \
SPOTINST_ACCOUNT=act-164a6de9 \
SPOTINST_CLUSTER_IDENTIFIER=k8s-syshero \
bash