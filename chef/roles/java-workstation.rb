# Name of the role should match the name of the file
name "java_workstation"

default_attributes(
  "java" => {
    "install_flavor" => "openjdk",
    "jdk_version" => "7"
  },
  "nodejs" => {
  "npm_packages" =>[
    {
      "name" => "grunt",
	  "version" => "0.4.1"
    },
	{
	  "name" => "grunt-cli",
	  "version" => "0.1.13"
	},
    {
      "name" =>"bower",
      "version"=>  "1.6.4"
    }]
	}
)


# Run list function we mentioned earlier
run_list(
    "recipe[apt]",
	"recipe[java]",
	"recipe[maven]",
	"recipe[nodejs]",
	"recipe[nodejs::npm]",
	"recipe[git]",
    #"recipe[apache2]",
	#"recipe[vhosts]",
    "recipe[tomcat]",
	"recipe[tomcat::users]"
)

override_attributes(
    "apache" => {
                "default_site_enabled" => true,
				
                
    }
	 # 'apache2' => {
    # 'vhosts' => [{
      # 'name' => 'rails.company.com',
      # 'aliases' => [ 'content-test.optimispt.com' ],
      # 'domain' => 'company',
      # 'environment' => 'production'
    # }]
  #}
	
)