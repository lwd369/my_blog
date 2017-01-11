# Server Setting

server "www.lwd369.com", user: "lwd369", roles: %w{app db web}

# Custom SSH Options

 set :ssh_options, {
   keys: %w(/Users/lwd369/.ssh/id_rsa),
   forward_agent: false,
 }

# Puma Setting
set :deploy_to, '/var/www/my_blog'
set :puma_bind, %w(unix:///var/www/my_blog/shared/tmp/sockets/puma.sock)
set :puma_threads, [1,3]
set :puma_workers, 1
set :puma_preload_app, false
set :nginx_sites_available_path, '/etc/nginx/sites-available'
set :nginx_sites_enable_path, '/etc/nginx/sites-enabled'
set :port, 22

# Env Setting
set :default_env, {
 
}