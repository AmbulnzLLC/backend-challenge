require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BackendChallenge
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.i18n.available_locales = %i[en en-US]
    config.i18n.default_locale = :en
    config.i18n.locale = :en

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.generators do |g|
      g.orm                 :active_record
      g.template_engine     :slim
      g.assets              false
      g.helper              false
      g.system_tests        'false'
      g.scaffold_stylesheet 'false'
    end
    # config.middleware.use Sentry::Rack::CaptureExceptions
    Rails.application.routes.default_url_options = {
      host: Rails.application.credentials.host || 'localhost',
      port: Rails.application.credentials.port || 3000
    }
  end
end
