local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.local_path_provisioner;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('local-path-provisioner', params.namespace);

{
  'local-path-provisioner': app,
}
