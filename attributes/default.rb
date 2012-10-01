## Composer Options
default[:composer][:install_path] = "/usr/local/bin"
default[:composer][:alias] = true

## Composer Project Options
default[:composer][:project][:composer_path] = node[:composer][:install_path]
default[:composer][:project][:dev] = false

case node['platform']
  when "centos", "redhat", "fedora", "scientific", "amazon"
    default[:composer][:owner] = "apache"
  when "debian", "ubuntu"
    default[:composer][:owner] = "www-data"
  else
    default[:composer][:owner] = "root"
end

puts node
