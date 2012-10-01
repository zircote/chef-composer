unless new_resource.composer_path.nil?
  new_resource.composer_path = new_resource.composer_path + '/'
end
action :install do
  execute "install-composer-packages" do
    only_if "which composer >>/dev/null"
    cwd new_resource.project_dir
    dev = new_resource.dev ? "--dev" : ''
    command "#{new_resource.composer_path}composer install -n --no-ansi -q #{dev}"
  end
end
action :update do
  execute "update-composer-packages" do
    only_if "which composer >>/dev/null"
    cwd new_resource.project_dir
    dev = new_resource.dev ? "--dev" : ''
    command "#{new_resource.composer_path}composer update -n --no-ansi -q #{dev}"
  end
end
action :dump_autoload do
  execute "dump-composer-autoload" do
    only_if "which composer >>/dev/null"
    cwd new_resource.project_dir
    dev = new_resource.dev ? "--dev" : ''
    command "#{new_resource.composer_path}composer update -n --no-ansi -q #{dev}"
  end
end
