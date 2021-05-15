# frozen_string_literal: true

require 'rails_helper'

describe Faq::FrequentQuestionSerializer, type: :serializer do
  let(:faq) { create :frequent_question }
  let(:expected_return) do
    {
      id: faq.id,
      question: faq.question,
      answer: faq.answer
    }.to_json
  end

  context 'with valid params' do
    it { expect(described_class.new(faq).serializable_hash.to_json).to eq(expected_return) }
  end
end
