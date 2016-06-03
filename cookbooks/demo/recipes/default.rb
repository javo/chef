package 'git-core'

template "/#{node["user"]}/hello.txt" do
    source "hello.txt.erb"
    owner "#{node["user"]}"
    group "#{node["user"]}"
    mode 0755
    action :create
end
