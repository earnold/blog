Chef::Log.info("Starting Delayed::Jobs")
sudo "monit -g delayed_job_blog start"