# unicorn config
default[:app][:unicorn] = {}
default[:app][:unicorn][:socket] = "#{node[:app][:sockets_path]}/unicorn.sock"
default[:app][:unicorn][:pid] = "#{node[:app][:pids_path]}/unicorn.pid"
default[:app][:unicorn][:log] = "#{node[:app][:logs_path]}/unicorn.log"
default[:app][:unicorn][:error_log] = "#{node[:app][:logs_path]}/unicorn.error.log"
default[:app][:unicorn][:workers] = 4
default[:app][:unicorn][:user] = "#{node[:app][:user]}"
default[:app][:unicorn][:group] = "#{node[:app][:group]}"
default[:app][:unicorn][:script] = "#{node[:app][:services_path]}/unicorn-#{node[:app][:name]}"
default[:app][:unicorn][:config] = "#{node[:app][:config_path]}/unicorn.rb"

default[:app][:monit][:unicorn] = "#{node[:app][:monit][:path]}/unicorn-#{node[:app][:name]}.conf"