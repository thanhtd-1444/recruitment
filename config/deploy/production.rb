set :stage, :production
set :rails_env, :production
set :deploy_to, "/deploy/apps/recruitment"
set :branch, :master
server "52.199.87.198", user: "deploy", roles: %w(web app db)
