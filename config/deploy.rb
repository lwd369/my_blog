# config valid only for current version of Capistrano
lock "3.7.1"

set :application, "my_blog"
set :scm, :git
set :repo_url, "https://github.com/lwd369/my_blog.git"
set :branch, :master
set :deploy_to, "/var/www/my_blog"
append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
set :pty, true

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5
