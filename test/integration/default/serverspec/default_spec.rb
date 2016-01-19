require "serverspec"

set :backend, :exec

describe "rsyslog::default" do
  describe package("rsyslog-gnutls") do
    it { is_expected.to be_installed }
  end

  describe file("/etc/rsyslog.d/10-papertrail.conf") do
    it { should be_a_file }
    it { should be_mode(644) }
  end

  describe file("/etc/rsyslog/papertrail-bundle.pem") do
    it { should be_a_file }
    it { should be_mode(644) }
  end

  describe service("rsyslog") do
    it { should be_enabled }
    it { should be_running }
  end
end
