logger = Logger.new(STDOUT)
logger.level = Logger::ERROR

Sentry.init do |config|
  config.enabled_environments = %w[production]
  config.dsn = ''
  config.async = lambda { |event, hint| Sentry::SendEventJob.perform_later(event, hint) }
  config.excluded_exceptions += ['ActionController::RoutingError', 'ActiveRecord::RecordNotFound']
  config.inspect_exception_causes_for_exclusion = true
  config.logger = logger
  config.breadcrumbs_logger = [:active_support_logger]
  config.backtrace_cleanup_callback = lambda do |backtrace|
    Rails.backtrace_cleaner.clean(backtrace)
  end
end
