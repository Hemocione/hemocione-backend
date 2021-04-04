# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: %w[Authorization],
                  expose: %w[Authorization],
                  methods: %i[get post put patch options head]
  end
end
