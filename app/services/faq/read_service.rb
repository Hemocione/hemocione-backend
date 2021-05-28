# frozen_string_literal: true

module Faq
  class ReadService < BaseService
    attr_reader :search_params

    def initialize(args = {})
      @search_params = args
    end

    def execute
      FrequentQuestion.where(search_params)
    end
  end
end
