name "rsyslog"
maintainer "Christopher Chow"
maintainer_email "devs@kinesis.org"
license "MIT"
description "Setup rsyslog on Ubuntu and Debian"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version "1.0.0"

depends "apt"

supports %w(ubuntu)
