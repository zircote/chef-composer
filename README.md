Description
===========
A cookbook to install [Composer](http://getcomposer.org) and maintain composer packages within project deployments.
Requirements
============
n/a

Attributes
==========

 - `:install_path`: The path which composer will be installed
 - `:owner`: The owner of the file
 - `:composer_path`: The path for composer (only required when not in the default $PATH`
 - `:dev`: Whether to execute the project activities with the `--dev` flag.

```ruby
default[:composer][:install_path] = "/usr/local/bin"
default[:composer][:owner] = "root" # apache|www-data|root
default[:composer][:project][:composer_path] = nil
default[:composer][:project][:dev] = false
```

Usage
=====

## `composer`

### Actions:

 - `:install`
 -  `:uninstall`
 -  `:update`
 
### Example:

```ruby
composer "/usr/local/bin" do
  owner "root" # optonal
  action [:install, :upgrade]
end

composer "/usr/local/bin" do
  action :uninstall
do
```

## `composer_project`

### Actions:
 - `:install`
 - `:update`
 - `:dump_autoload`
 
### Example:

```ruby
composer_project "/var/www/pr1" do
 dev true # optonal
 run_as "www-data" # optonal
 composer_path "/usr/local/bin" #optional
 action [:install, :update, :dump_autoload]
end
```
