actions :install, :uninstall, :update

default_action :install

attribute :install_path, :kind_of => String,                  :name_attribute => true
attribute :owner,        :default => node[:composer][:owner], :kind_of => [String, Integer]
attribute :alias,        :default => node[:composer][:alias], :kind_of => [FalseClass, TrueClass]
