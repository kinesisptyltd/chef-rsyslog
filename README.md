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

# Dev Setup

```
brew cask update
brew cask install chefdk
chef exec bundle install
brew install docker docker-machine # need virtual box first
docker-machine create --driver virtualbox default

# as required set env variables for docker
eval $(docker-machine env default)

kitchen converge
kitchen verify # run tests

# ssh in
kitchen login
```
