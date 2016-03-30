to_add = node["users"]["add"]

to_add.each do |a|
  execute "add user" do
    command "adduser --home /home/#{a} #{a} ; usermod -G sudo #{a}"
    action :run
    not_if { File.exists?("/home/#{a}/.bashrc") }
  end
end


