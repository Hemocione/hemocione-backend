# frozen_string_literal: true

module Faq
  RSpec.describe UpdateService, type: :service do
    let(:faq) { FactoryBot.create :frequent_question }

    before { faq }

    it { expect(described_class.call(0, {})).to be_nil }
    it { expect(described_class.call(faq.id, {})).to eq(faq) }
    it { expect(described_class.call(faq.id, { question: 'abc?' })).to eq(faq.reload) }
  end
end
