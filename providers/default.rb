
action :install do
  remote_file "get-composer" do
    not_if "test -f #{new_resource.install_path}/composer.phar"
    path "#{new_resource.install_path}/composer.phar"
    source "https://getcomposer.org/composer.phar"
    owner new_resource.owner
    mode 0755
  end
  execute "ln -nsf #{new_resource.install_path}/composer.phar #{new_resource.install_path}/composer"
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
    command "#{new_resource.install_path}/composer.phar -n --no-ansi -q self-update"
  end
end
