#
# Cookbook Name:: composer
#
# Copyright 2012, Robert Allen
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

## Composer Options
default[:composer][:install_path] = "/usr/local/bin"
default[:composer][:owner] = "root"
## Composer Project Options
default[:composer][:dev] = false
## Symfony Recipe Settings
default[:composer][:sfpath] = "/var/www"
default[:composer][:sffolder] = "Symfony"
default[:composer][:sfversion] = ""
default[:composer][:sfuser] = "vagrant"
default[:composer][:sfgroup] = "vagrant"