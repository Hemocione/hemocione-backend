# frozen_string_literal: true

module Faq
  RSpec.describe ReadService, type: :service do
    let(:faqs) { FactoryBot.create_list :frequent_question, 3 }

    it { expect(described_class.call({})).to eq(faqs) }
    it { expect(described_class.call(question: faqs.first.question)).to eq([faqs.first]) }
  end
end
