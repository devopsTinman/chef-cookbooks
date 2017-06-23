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

file '/etc/motd' do
	content "this server is owned by somebody
	Hostname: #{node['hostname']}
	IP Address: #{node['ipaddress']}
	CPU: #{node['cpu']['0']['mhz']}
	Memory: #{node['memory']['total']}
	"
	action :create
	owner 'root'
	group 'root'
	mode '0655'
end

package 'git' do
	action :install
end
