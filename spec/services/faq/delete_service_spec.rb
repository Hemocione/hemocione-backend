# frozen_string_literal: true

module Faq
  RSpec.describe DeleteService, type: :service do
    let(:faq) { FactoryBot.create :frequent_question }

    before { faq }

    it { expect { described_class.call(faq.id) }.to change(FrequentQuestion, :count).by(-1) }
    it { expect(described_class.call(faq.id)).to be_truthy }
    it { expect(described_class.call(0)).to be_truthy }
  end
end
