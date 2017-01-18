execute "Install peco" do
  user node[:user]
  command "export GOPATH=$HOME; go get github.com/peco/peco/cmd/peco"
end
