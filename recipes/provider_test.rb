rsyslog_papertrail_log_program "test" do
  program "dummyprogram"
  host "localhost"
  port 1234
end

rsyslog_papertrail_log_file "testfile" do
  file "/var/log/syslog"
  host "localhost"
  port 1234
end
