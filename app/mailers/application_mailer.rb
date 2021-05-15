# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'lucas@ecoding.com.br'
  layout 'mailer'
end
