file "/etc/profile.d/ruby.sh" do 
mode "0777" 
owner "root"
content "RUBY_HOME=/opt/chef/embedded/bin\nPATH=$PATH:$RUBY_HOME\nexport RUBY_HOME"
action :create
end

file "/etc/profile.d/ruby_gems.sh" do 
 owner "root" 
 mode "0777" 
 content"export PATH GEM_HOME=/opt/chef/embedded/bin\n

PATH=$PATH:$GEM_HOME\n

export GEM_HOME\n"
action :create
end