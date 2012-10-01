actions :install, :update, :dump_autoload

default_action :update

attribute :project_dir, :kind_of => String, :name_attribute => true
attribute :run_as, :kind_of => [String, Integer], :default => node[:composer][:project][:run_as]
attribute :composer_path, :kind_of => String, :default => node[:composer][:project][:composer_path]
attribute :dev, :kind_of => [TrueClass, FalseClass], :default => node[:composer][:project][:dev]
