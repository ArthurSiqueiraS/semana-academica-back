require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
# require 'active_record/railtie'
# require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
# require 'sprockets/railtie'
require 'rails/test_unit/railtie'
load 'app/lib/helpers.rb'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

class Application < Rails::Application
  # Initialize configuration defaults for originally generated Rails version.
  config.load_defaults 5.2
  config.time_zone = 'Brasilia'
  config.action_cable.mount_path = '/cable'
  config.action_cable.allowed_request_origins = [/http:\/\/*/, /https:\/\/*/]

  config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins FRONT_END
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :delete, :options]
    end
  end

  config.i18n.default_locale = :'pt-BR'
  config.i18n.fallbacks = {'pt-BR' => 'en'}

  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration can go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded after loading
  # the framework and any gems in your application.

  # Only loads a smaller set of middleware suitable for API only apps.
  # Middleware like session, flash, cookies can be added back manually.
  # Skip views, helpers and assets when generating a new resource.
  config.api_only = true

  config.session_store :cookie_store, key: '_interslice_session'
  config.middleware.use ActionDispatch::Cookies # Required for all session management
  config.middleware.use ActionDispatch::Session::CookieStore, config.session_options

  config.mongoid.logger.level = Logger::ERROR
  config.autoload_paths << "#{Rails.root}/lib"
  Dir["#{Rails.root}/app/concepts/*/"].each do |concept_folder|
    config.autoload_paths << concept_folder
    Dir["#{concept_folder}*/"].each do |concept_sub_folder|
      config.autoload_paths << concept_sub_folder
    end
  end
end
