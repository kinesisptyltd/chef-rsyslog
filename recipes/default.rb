apt_repository "rsyslog" do
  uri "ppa:adiscon/v8-stable"
  distribution node["lsb"]["codename"]
  components ["main"]
end

apt_package "rsyslog-gnutls" do
  action :install
end

service "rsyslog" do
  supports status: true, start: true, stop: true, restart: true, reload: true
  provider Chef::Provider::Service::Init::Debian
  action [:enable, :start]
end

include_recipe "rsyslog::papertrail" if node["rsyslog"]["papertrail"]
