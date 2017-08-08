git "clone dotfiles" do
  user "#{node[:user]}"
  destination "/Users/#{node[:user]}/dotfiles"
  repository "https://github.com/taroooyan/dotfiles.git"
  not_if "test -d /Users/#{node[:user]}/dotfiles"
end
execute "dotfiles setup" do
  user "#{node[:user]}"
  cwd "/Users/#{node[:user]}/dotfiles"
  command "./setup.sh"
end
