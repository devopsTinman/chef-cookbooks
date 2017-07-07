package 'nano' do
	action :install
end

package 'vim-enhanced' do
	action :install
end

package 'ntp' do
	action :install
end

package 'tree' do
	action :install
end

# node['ipaddress']
# node['memory']['total']

# print statement 'I have 4 apples'
# apple_count = 4
# puts "I have #{apple_count} apples"

template '/etc/motd' do
	source 'motd.erb'
	variables(
		:name => 'superman'
	)
	action :create
	owner 'root'
	group 'root'
	mode '0655'
end

package 'git' do
	action :install
end

user 'user1' do
	comment 'user1'
	uid '123'
	home '/home/user1'
	shell '/bin/bash'
end

group 'admins' do
	members ['user1']
	append true
end
