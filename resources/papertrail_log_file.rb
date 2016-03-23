actions [:create, :delete]
default_action :create

property :name, kind_of: String, name_attribute: true, required: true
property :priority, kind_of: String, default: 100
property :file, kind_of: String, required: true
property :host, kind_of: String, required: true
property :port, kind_of: Fixnum, required: true
property :source, kind_of: String, default: "papertrail_log_file.erb"
property :cookbook, kind_of: String, default: "rsyslog"
property :polling_interval, kind_of: String, default: 5
property :facility, kind_of: String, default: "local3"
property :severity, kind_of: String, default: "info"
