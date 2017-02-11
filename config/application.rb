require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Overtime
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join("lib")
    config.active_record.raise_in_transactional_callbacks = true
  end
end
