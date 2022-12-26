Sidekiq.configure_server do |config|
  config.redis = {
    url: "redis://127.0.0.1:6379/12"
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: "redis://127.0.0.1:6379/12"
  }
end

if Sidekiq.server?
  schedule_file = Rails.root.join('config', 'sidekiq_schedule.yml')
  Sidekiq::Cron::Job.load_from_hash(YAML.load_file(schedule_file))
end
