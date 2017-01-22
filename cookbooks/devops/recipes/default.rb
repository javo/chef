execute "Add iptables rule" do
  command "iptables -A INPUT -p tcp -s 0/0 --dport #{node["listen"]} -j #{node["policy"]}"
end
