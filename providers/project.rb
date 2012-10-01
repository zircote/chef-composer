
action :install do
  execute "install-composer-packages" do
    only_if "which composer >>/dev/null"
    cwd new_resource.project_dir
    dev = new_resource.dev ? "--dev" : ''
    command "/usr/bin/env php #{new_resource.composer_path}/composer.phar install -n --no-ansi -q #{dev}"
  end
end
action :update do
  execute "update-composer-packages" do
    only_if "which composer >>/dev/null"
    cwd new_resource.project_dir
    dev = new_resource.dev ? "--dev" : ''
    command "/usr/bin/env php #{new_resource.composer_path}/composer.phar update -n --no-ansi -q #{dev}"
  end
end
action :dump_autoload do
  execute "dump-composer-autoload" do
    only_if "which composer >>/dev/null"
    cwd new_resource.project_dir
    dev = new_resource.dev ? "--dev" : ''
    command "/usr/bin/env php #{new_resource.composer_path}/composer.phar update -n --no-ansi -q #{dev}"
  end
end
