application-unicorn Cookbook
============

This cookbook helps you setup the `unicorn` config to run a rails application with `nginx`
- It depends on:
  + [application-defaults](https://github.com/phanviet/chef-application-defaults.git)
  + [application-monit](https://github.com/phanviet/chef-application-monit.git)
- Some related cookbooks:
  + [application-nginx](https://github.com/phanviet/chef-application-unicorn.git)

Attributes
----------
  + Reading `attributes` folder in cookbook to know more details

Recipes & Usage
-----
- `recipe[application-unicorn]`: Setup `unicorn` config and services to run a rails application with `nginx`
- `recipe[application-unicorn::service]`: Setup services for unicorn by `monit`
