bash "install_chefdk" do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget https://packages.chef.io/files/stable/chefdk/1.3.40/el/7/chefdk-1.3.40-1.el7.x86_64.rpm

  rpm -Uvh chefdk-1.3.40-1.el7.x86_64.rpm
  chef gem install knife-solo
  EOH
 	not_if { File.exist?("/tmp/chefdk-1.3.40-1.el7.x86_64.rpm") }
end
 #chefdk-0.16.28-1.el6.x86_64.rpm
  #wget https://packages.chef.io/stable/el/6/chefdk-0.16.28-1.el6.x86_64.rpm