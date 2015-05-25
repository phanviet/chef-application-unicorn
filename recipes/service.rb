service 'unicorn' do
  start_command "sudo monit start unicorn-#{node[:app][:name]}"
  stop_command "sudo monit stop unicorn-#{node[:app][:name]}"
  restart_command "sudo monit restart unicorn-#{node[:app][:name]}"
  supports restart: true, stop: true, start: true
end