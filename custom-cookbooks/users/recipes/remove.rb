to_delete = node["users"]["remove"]

to_delete.each do |d|
  if File.exists?("/home/#{d}/.bashrc") 
    execute "delete user" do
      command "userdel -r #{d}"
    end
  else
    puts "=> nothing to do"
  end
end
