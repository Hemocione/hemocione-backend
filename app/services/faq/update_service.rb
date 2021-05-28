# frozen_string_literal: true

module Faq
  class UpdateService < BaseService
    attr_reader :faq, :params

    def initialize(faq_id, args)
      @faq = FrequentQuestion.find_by(id: faq_id)
      @params = args
    end

    def execute
      return if faq.blank?

      faq.update!(params)
      faq.reload
    end
  end
end
