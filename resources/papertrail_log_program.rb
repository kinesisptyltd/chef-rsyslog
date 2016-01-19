actions [:create, :delete]
default_action :create

property :name, kind_of: String, name_attribute: true, required: true
property :priority, kind_of: String, default: 100
property :program, kind_of: String, required: true
property :host, kind_of: String, required: true
property :port, kind_of: String, required: true
property :source, kind_of: String, default: "papertrail_log_program.erb"
property :cookbook, kind_of: String, default: "rsyslog"
