# config/application.rb

require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Askar2
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.action_mailer.default_url_options = { :host => ENV['APPLICATION_HOST'], port: ENV['APPLICATION_PORT'] }
    config.action_mailer.delivery_method = :smtp

    config.assets.paths << Rails.root.join("vendor","assets","bower_components")
    #config.assets.paths << Rails.root.join("vendor","assets","bower_components","bootstrap-sass-official","assets")
    config.assets.paths << Rails.root.join("vendor","assets","bower_components","bootstrap-sass-official","assets","fonts")
    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff)$)

    config.action_mailer.smtp_settings = {
      address: ENV['SERVER_MAIL'],
      port: ENV['SERVER_MAIL_PORT'],
      domain: ENV['SERVER_MAIL_DOMAIN'],
      authentication: ENV['SERVER_MAIL_AUTHENTICATION'],
      enable_starttls_auto: ENV['SERVER_MAIL_ENABLE_STARTTLS'],
      user_name: ENV['SERVER_MAIL_USER_NAME'],
      password: ENV['SERVER_MAIL_PASSWORD']
    }

    config.generators do |g|
      g.assets false
      g.helper false
      g.template_engine false
      g.test_framework :rspec,
        fixtures: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        request_specs: false,
        controller_specs: true
    end
  end
end
