Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true


  # config.public_file_server.enabled = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?



  config.public_file_server.headers = {
    'Cache-Control' => 'public, max-age=31536000',
    'Access-Control-Allow-Origin' => '*'
  }
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  config.assets.enabled = true
  config.assets.digest = true
  config.assets.compile = false

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb


  #paperclip S3
  # config.paperclip_defaults = {
  #     storage: :s3,
  #     s3_protocol: 'https',
  #     s3_credentials: {
  #       bucket: ENV["S3_BUCKET"],
  #       access_key_id: ENV["AWS_ACCESS_KEY_ID"],
  #       secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
  #       s3_region: ENV["AWS_REGION"]
  #       }
  #     }

  config.paperclip_defaults = {
    storage: :s3,
    url: ":s3_alias_url",
    path: "/:class/:attachment/:id_partition/:style/:filename",
    s3_host_alias: ENV['AWS_CDN_S3'],
    s3_region: ENV['AWS_REGION'],
    s3_credentials: {
        bucket: ENV['S3_BUCKET'],
        access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
    }
}

config.action_controller.asset_host = ENV['AWS_CDN_HEROKU']

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug

  # Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Use a real queuing backend for Active Job (and separate queues per environment)
  # config.active_job.queue_adapter     = :resque
  # config.active_job.queue_name_prefix = "fuzzy_hat_artist_site_#{Rails.env}"
  config.action_mailer.perform_caching = false

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Use a different logger for distributed setups.
  # require 'syslog/logger'
  # config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new 'app-name')

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
