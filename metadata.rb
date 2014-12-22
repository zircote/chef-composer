#
# Cookbook Name:: composer
#
# Copyright 2012, Robert Allen
# Add On Geraud Puechaldou
#
# @license    http://www.apache.org/licenses/LICENSE-2.0
#             Copyright [2012] [Robert Allen]
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

maintainer       "Robert Allen"
maintainer_email "zircote@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures php composer"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"
name             "composer"

%w{ debian ubuntu centos redhat fedora scientific amazon suse }.each do |os|
  supports os
end

recipe "composer", "PHP Composer Installation and project interactions"
recipe "composer::symfony", "Install symfony"

