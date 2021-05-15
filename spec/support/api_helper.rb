# frozen_string_literal: true

require 'devise/jwt/test_helpers'

module ApiHelper
  def api_sign_in(user)
    headers = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
    auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)
    auth_headers.each { |key, value| request.headers[key] = value }
  end
end
