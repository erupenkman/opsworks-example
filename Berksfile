source "https://supermarket.getchef.com"

metadata
isVagrant = ENV.include?('VAGRANT_EXECUTABLE')

if isVagrant
	cookbook "deploy", path: 'opsworks/cookbooks/deploy'
	cookbook "apache2", path: 'opsworks/cookbooks/apache2'

	cookbook "ruby", path: 'opsworks/cookbooks/ruby'
	cookbook "opsworks_rubygems", path: 'opsworks/cookbooks/opsworks_rubygems'
	cookbook "opsworks_bundler", path: 'opsworks/cookbooks/opsworks_bundler'

	cookbook "opsworks_commons", path: 'opsworks/cookbooks/opsworks_commons'
	cookbook "scm_helper", path: 'opsworks/cookbooks/scm_helper'
	cookbook "mod_php5_apache2", path: 'opsworks/cookbooks/mod_php5_apache2'
	cookbook "ssh_users", path: 'opsworks/cookbooks/ssh_users'
	cookbook "opsworks_agent_monit", path: 'opsworks/cookbooks/opsworks_agent_monit'
	cookbook "opsworks_java", path: 'opsworks/cookbooks/opsworks_java'
	cookbook "opsworks_aws_flow_ruby", path: 'opsworks/cookbooks/opsworks_aws_flow_ruby'
	cookbook "gem_support", path: 'opsworks/cookbooks/gem_support'
	cookbook "opsworks_nodejs", path: 'opsworks/cookbooks/opsworks_nodejs'
	cookbook "opsworks_initial_setup", path: 'opsworks/cookbooks/opsworks_initial_setup'
	cookbook "mysql", path: 'opsworks/cookbooks/mysql'
	cookbook "dependencies", path: 'opsworks/cookbooks/dependencies'
	cookbook "opsworks_ganglia", path: 'opsworks/cookbooks/opsworks_ganglia'

end