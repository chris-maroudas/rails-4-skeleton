set :application, "set your application name here"
set :repository,  "set your repository location here"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/cinelytics/deploy/cinelytics'

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "your web-server here"                          # Your HTTP server, Apache/etc
role :app, "your app-server here"                          # This may be the same as your `Web` server
role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
role :db,  "your slave db-server here"


# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/secrets.yml config/application.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

# what specs should be run before deployment is allowed to
# continue, see lib/capistrano/tasks/run_tests.rake
set :tests, []

#we want to compile them locally
Rake::Task["deploy:compile_assets"].clear

namespace :deploy do
  # make sure we're deploying what we think we're deploying
  before :deploy, 'deploy:check_revision'
  
  # only allow a deploy with passing tests to deployed
  before :deploy, 'deploy:run_tests'
  
  # compile assets locally then rsync
  after :updated, 'deploy:compile_assets_locally'
end
