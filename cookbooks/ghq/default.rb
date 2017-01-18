execute "Install ghq" do
  user node[:user]
  command "export GOPATH=$HOME; go get github.com/motemen/ghq"
end
