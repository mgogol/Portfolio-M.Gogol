Rails.application.configure do

  config.cache_classes = true

  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?

  config.assets.js_compressor = :uglifier

  config.assets.compile = false

  config.assets.digest = true

  config.log_level = :debug

  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # config.action_mailer.default_url_options = { host: 'https://radiant-earth-85759.herokuapp.com' }

  config.action_mailer.default_url_options = { host: 'https://radiant-earth-85759.herokuapp.com' }
  config.action_mailer.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = {
      :user_name => ENV['SENDGRID_USERNAME'],
      :password => ENV['SENDGRID_PASSWORD'],
      :domain => 'heroku.com',
      :address => 'smtp.sendgrid.net',
      :port => 587,
      :authentication => :plain,
      :enable_starttls_auto => true
  }

  config.paperclip_defaults = {
      storage: :s3,
      s3_protocol: ':https',
      s3_permissions: 'public',
      s3_region: 'us-east-1',
      s3_credentials: {
        bucket: 'portfolio',
        access_key_id: 'Q3AM3UQ867SPQQA43P2F',
        secret_access_key: 'zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG',
      },
      s3_host_name: 'play.minio.io:9000',
      s3_options: {
        endpoint: 'https://play.minio.io:9000',
        force_path_style: true
      },
      url: ':s3_path_url',
      path: '/:class/:id.:style.:extension'
  }
end
