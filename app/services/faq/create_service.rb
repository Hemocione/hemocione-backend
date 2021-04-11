# frozen_string_literal: true

module Faq
  class CreateService < BaseService
    attr_reader :args

    def initialize(args)
      @args = args
    end

    def execute
      FrequentQuestion.create!(args)
    end
  end
end
