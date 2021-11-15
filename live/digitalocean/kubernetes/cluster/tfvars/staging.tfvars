region = "nyc1"

cluster_version_prefix   = "1.21."
cluster_maintenance_day  = "wednesday"
cluster_maintenance_time = "02:00"

node_size          = "s-1vcpu-2gb"
node_autoscale_min = 1
node_autoscale_max = 1

app         = "brane"
environment = "staging"
