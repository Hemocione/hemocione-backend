# frozen_string_literal: true

module Faq
  class DeleteService < BaseService
    attr_reader :faq

    def initialize(faq_id)
      @faq = FrequentQuestion.find_by(id: faq_id)
    end

    def execute
      return true if faq.blank?

      faq.destroy!
    end
  end
end
