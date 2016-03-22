use_inline_resources

action :create do
  template "/etc/rsyslog.d/#{new_resource.priority}-papertrail-#{new_resource.name}-file.conf" do
    mode "0664"
    source new_resource.source
    cookbook new_resource.cookbook
    variables(
      "file" => new_resource.file,
      "host" => new_resource.host,
      "port" => new_resource.port,
      "facility" => new_resource.facility,
      "polling_interval" => new_resource.polling_interval
    )
    action :create
  end
end

action :delete do
  file "/etc/rsyslog.d/#{new_resource.priority}-papertrail-#{new_resource.name}-file.conf" do
    action :delete
  end
end
