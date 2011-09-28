#coding:utf-8
set :application, "PusherChat-Rails"
set :deploy_to, "/home/wangxf/projects/PusherChat-Rails"

set :scm, "git"
set :repository,  "git://github.com/wxianfeng/PusherChat-Rails.git"
set :branch, "master"
set :use_sudo, false

set :user, "wangxf"

server "www.365weiyi.com", :web, :app, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end

  desc "Creating database.yml"
  task :create_database_config do
    run "ln -nfs /home/wangxf/projects/PusherChat-Rails/shared/config/database.yml #{current_path}/config/database.yml"
  end

  desc "Restarting passenger"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

after "deploy:symlink", "deploy:create_database_config"
