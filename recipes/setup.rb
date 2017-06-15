package 'nano' do
	action :install
end

package 'emacs' do
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

file '/etc/motd' do
	content 'this server is owned by tinman'
	action :create
	owner 'root'
	group 'root'
	mode '0655'
end

package 'git' do
	action :install
end
