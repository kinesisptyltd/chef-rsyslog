directory "/etc/rsyslog" do
  action :create
  mode "0755"
  owner "root"
  group "root"
end

remote_file "/etc/rsyslog/papertrail-bundle.pem" do
  source node["rsyslog"]["papertrail"]["ca_bundle"]
  checksum node["rsyslog"]["papertrail"]["ca_bundle_checksum"]
  mode "0644"
  owner "root"
  group "root"
  action :create_if_missing
end

# Add main papertrail config
template "/etc/rsyslog.d/10-papertrail.conf" do
  source "rsyslog-papertrail.conf.erb"
  mode "0644"
  notifies :restart, "service[rsyslog]"
end
