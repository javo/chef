log_level :info
log_location STDOUT
file_cache_path "/var/chef/cache"
cookbook_path ["~/code/chef/cookbooks"]
data_bag_path "~/code/chef/data_bags"
role_path "~/code/chef/roles"
Mixlib::Log::Formatter.show_time = true
