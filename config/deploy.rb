# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

# Application Name
set :application, "taskleaf2"
# Setting Github
set :repo_url, "git@github.com:kazkosa/taskleaf2.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory
set :deploy_to, "/var/www/taskleaf2"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"
set :linked_files, 'config/master.key'
# append :linked_files, "config/master.key"


# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/packs","node_modules", "vendor/bundle", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }


# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
#デプロイするサーバーにsshログインする鍵の情報を記述
set :ssh_options, auth_methods: ['publickey'], keys: ['~/.ssh/key_taskleaf2.pem'] 

set :rbenv_type, :user
# ruby version
set :rbenv_ruby, '2.7.1'


# プロセス番号を記載したファイルの場所
set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }

# デプロイ処理が終わった後、Unicornを再起動するための記述
after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end


# デプロイの手順の設定（Rails6からyarnインストールが必要に）
# namespace :deploy do
#   desc 'Restart application'
#   task :restart do
#     invoke 'unicorn:restart'
#   end

#   desc 'Create database'
#   task :db_create do
#     on roles(:db) do |host|
#       with rails_env: fetch(:rails_env) do
#         within current_path do
#           execute :bundle, :exec, :rake, 'db:create'
#         end
#       end
#     end
#   end
# before "deploy:assets:precompile", "deploy:yarn_install"
# namespace :deploy do
#   desc "Run rake yarn install"
#   task :yarn_install do
#     on roles(:web) do
#       within release_path do
#         execute("cd #{release_path} && yarn install --silent --no-progress --no-audit --no-optional")
#       end
#     end
#   end
# end

#   after :publishing, :restart

#   after :restart, :clear_cache do
#     on roles(:web), in: :groups, limit: 3, wait: 10 do
#     end
#   end
# end


