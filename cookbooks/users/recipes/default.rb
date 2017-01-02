to_add = node["users"]["add"]

to_add.each do |a|
  execute "add user" do
    command "adduser --home /home/#{a} #{a} ; usermod -G sudo #{a}"
    action :run
    not_if { File.exists?("/home/#{a}/.bashrc") }
  end

  execute "generate passwd" do
    passwd = `curl "https://www.random.org/strings/?num=1&len=10&digits=on&upperalpha=on&loweralpha=on&unique=on&format=plain&rnd=new"`
    command "echo '#{a}:#{passwd}' | chpasswd"
    command "echo ==> passwd for #{a} is #{passwd}"
    not_if "getent passwd #{a}"
  end
end


