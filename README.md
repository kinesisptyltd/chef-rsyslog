[![Circle CI](https://circleci.com/gh/kinesisptyltd/chef-rsyslog.svg?style=svg)](https://circleci.com/gh/kinesisptyltd/chef-rsyslog)

# chef-rsyslog

Setup `rsyslog` on Ubuntu and Debian

## Requirements

Only tested to be working on the following Ubuntu versions below, but may work on earlier versions too.

- Ubuntu 14.04

## Attributes

None

## LWRP

### rsyslog_papertrail_program_log

## Usage

Just include `rsyslog` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[rsyslog]"
  ]
}
```
