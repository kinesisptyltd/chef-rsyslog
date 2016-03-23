require "serverspec"

set :backend, :exec

describe "rsyslog::default" do
  describe package("rsyslog-gnutls") do
    it { is_expected.to be_installed }
  end

  describe file("/etc/rsyslog.d/10-papertrail.conf") do
    it { is_expected.to be_a_file }
    it { is_expected.to be_mode(644) }
  end

  describe file("/etc/rsyslog/papertrail-bundle.pem") do
    it { is_expected.to be_a_file }
    it { is_expected.to be_mode(644) }
  end

  describe service("rsyslog") do
    it { is_expected.to be_enabled }
    it { is_expected.to be_running }
  end

  describe file("/etc/rsyslog.d/100-papertrail-test.conf") do
    it { is_expected.to be_a_file }
    its(:content) { is_expected.to include "or $rawmsg contains 'dummyprogram'" }
  end

  describe file("/etc/rsyslog.d/99-papertrail-testfile-file.conf") do
    it { is_expected.to be_a_file }

    its(:content) { is_expected.to include "File=\"/var/log/syslog\"" }
  end
end
