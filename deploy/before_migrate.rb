Chef::Log.info("Stopping Delayed::Jobs")
sudo "monit -g delayed_job_blog stop"
sleep 10 #monit and delayed job are slow

rails_env = new_resource.environment["RAILS_ENV"]
Chef::Log.info("Precompiling assets for RAILS_ENV=#{rails_env}...")
execute "rake assets:precompile" do
  cwd release_path
  command "bundle exec rake assets:precompile"
  environment "RAILS_ENV" => rails_env
end