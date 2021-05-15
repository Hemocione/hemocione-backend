# frozen_string_literal: true

require 'devise/jwt/test_helpers'

module ApiHelper
  def api_sign_in(user)
    auth_headers = Devise::JWT::TestHelpers.auth_headers({}, user)
    auth_headers.each { |key, value| request.headers[key] = value }
  end
end
