require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Buddies
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
		config.autoload_paths << Rails.root.join('lib/services/**')

		config.generators do |g|
      g.assets false
      g.helper false
    end

    # Configure CORS rules for the API
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'

        resource '/v1/*',
          headers: :any,
          methods: [:get, :post, :delete, :put, :options, :head],
          credentials: true,
          max_age: 600
      end
    end

		# Cache store
    config.cache_store = :redis_store, ENV.fetch("REDIS_URL", "redis://localhost:6379")

    # Background jobs
    config.active_job.queue_adapter = :sidekiq

  end
end
