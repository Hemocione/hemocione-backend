# frozen_string_literal: true

module Faq
  class FrequentQuestionSerializer
    include ActiveModel::Serialization

    attr_reader :id, :question, :answer

    def initialize(frequent_question)
      @id = frequent_question.id
      @question = frequent_question.question
      @answer = frequent_question.answer
    end

    def attributes
      { id: nil, question: nil, answer: nil }
    end
  end
end
