
action :install do
  remote_file "get-composer" do
    not_if "test -f #{new_resource.install_path}/composer.phar"
    path "#{new_resource.install_path}/composer.phar"
    source "https://getcomposer.org/composer.phar"
    owner new_resource.owner
    mode 0755
  end
  if new_resource.alias
    template "/etc/profile.d/composer.sh" do
      not_if "test -f /etc/profile.d/composer.sh"
      source "composer.sh.erb"
    end
  end
end

action :uninstall do
  execute "unalias-composer" do
    only_if "test -f /etc/profile.d/composer.sh"
    command "unalias composer;rm -f /etc/profile.d/composer.sh"
  end
  execute "uninstall-composer" do
    only_if "test -f #{new_resource.install_path}/composer.phar"
    command "rm -f #{new_resource.install_path}/composer.phar"
  end
end

action :update do
  execute "self-update-composer" do
    only_if "test -f #{new_resource.install_path}/composer.phar"
    command "/usr/bin/env php #{new_resource.install_path}/composer.phar -n --no-ansi -q self-update"
  end
end
