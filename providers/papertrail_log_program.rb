use_inline_resources

action :create do
  template "/etc/rsyslog.d/#{new_resource.priority}-papertrail-#{new_resource.name}.conf" do
    mode "0664"
    source new_resource.source
    cookbook new_resource.cookbook
    variables(
      "program" => new_resource.program,
      "host" => new_resource.host,
      "port" => new_resource.port,
    )
    action :create
  end
end

action :delete do
  file "/etc/rsyslog.d/#{new_resource.priority}-papertrail-#{new_resource.name}.conf" do
    action :delete
  end
end
