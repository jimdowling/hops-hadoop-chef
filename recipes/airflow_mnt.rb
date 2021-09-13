#
# Recipe to create HopsFS mount point to store Airflow DAGs
#
node.override['hops']['fuse']['staging_folder'] = node['hops']['dir'] + "/airflow-staging"
node.override['hops']['fuse']['mount_point'] = node['hops']['dir'] + "/airflow-hopsfs"
node.override['hops']['fuse']['service']      = "airflow"
node.override['hops']['fuse']['service_name'] = "airflow-mount"

include_recipe "hops::fuse_mnt"

