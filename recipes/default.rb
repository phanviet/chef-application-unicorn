#
# Cookbook Name:: application-unicorn
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{unicorn.rb unicorn.sh unicorn.conf}.each do |f|
  upload_template "#{node[:app][:config_path]}/#{f}" do
    source "#{f}.erb"
  end
end

bash 'Setup unicorn service' do
  code <<-EOL
    sudo cp "#{node[:app][:config_path]}/unicorn.sh" "#{node[:app][:unicorn][:script]}" && sudo chown #{node[:app][:unicorn][:user]}:#{node[:app][:unicorn][:group]} #{node[:app][:unicorn][:script]} && sudo chmod ugo+x #{node[:app][:unicorn][:script]}
    sudo cp "#{node[:app][:config_path]}/unicorn.conf" "#{node[:app][:monit][:unicorn]}"
  EOL

  notifies :restart, 'service[monit]', :immediately
end

include_recipe 'application-unicorn::service'