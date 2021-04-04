# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@hemocione.com.br'
  layout 'mailer'
end
