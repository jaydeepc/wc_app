#
# Cookbook Name:: wc_app
# Recipe:: default
#
# Copyright 2014, Example Com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#set proper env vars for db encoding
ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = "en_US.UTF-8"
include_recipe "postgresql::server"

execute "create postgres user" do
  guard = <<-EOH
    psql -c "select * from pg_user where usename='admin'" | grep -c admin}
    EOH

  code = <<-EOH
   cat << EOF | sudo su postgres
      psql
      create user admin password 'password' createdb;
      EOF
    EOH
  command code
  not_if guard
end

#phantomjs deps
apt_package 'build-essential'
apt_package 'chrpath'
apt_package 'git-core'
apt_package 'libssl-dev'
apt_package 'libfontconfig1-dev'
apt_package 'libxft-dev'

execute 'npm install -g phantomjs'

# For some reason the command fails with file not found error if run on it's own
execute "bundle install --gemfile=/vagrant/Gemfile"
