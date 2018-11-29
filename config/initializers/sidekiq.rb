Sidekiq.configure_server do |config|
	config.redis = { url: ENV['redis_url'] }
end