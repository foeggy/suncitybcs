set :application, "suncitybcs"
set :repository,  "git@github.com:foeggy/suncitybcs.git"
set :deploy_to,    "/var/rails/#{fetch(:application)}"
set :keep_releases, false
set :use_sudo, false

set :scm, :git
set :user, "deploy_suncitybcs"

before "deploy", "deploy:check"
after "deploy", "deploy:migrate"
