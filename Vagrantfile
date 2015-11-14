Vagrant.configure(2) do |config|
  # A standard Ubuntu 12.04 LTS 32-bit box
  # For more boxes, you can look at https://atlas.hashicorp.com/boxes/search
  config.vm.box = "hashicorp/precise32"
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
 
  config.vm.provision :chef_solo do |chef|
     chef.roles_path = "chef/roles"
	 chef.data_bags_path = "chef/data_bags"
     chef.cookbooks_path = ["chef/site-cookbooks", "chef/cookbooks"]
     chef.add_role "java-workstation"
  end
  
end