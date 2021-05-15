# frozen_string_literal: true

Healthcheck.configure do |config|
  config.success = 200
  config.error = 503
  config.verbose = true
  config.route = '/healthcheck'
  config.method = :get

  config.custom = lambda { |controller, checker|
    controller.render json: { uptime: (Time.current - IO.read('/proc/uptime').split[0].to_f) } unless checker.errored?
  }

  # -- Checks --
  config.add_check :database,     -> { ActiveRecord::Base.connection.execute('select 1') }
  config.add_check :migrations,   -> { ActiveRecord::Migration.check_pending! }
  config.add_check :cache,        -> { Rails.cache.read('ok') }
end
