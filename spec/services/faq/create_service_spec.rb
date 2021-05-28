# frozen_string_literal: true

module Faq
  RSpec.describe CreateService, type: :service do
    describe '.call' do
      let(:params) { FactoryBot.attributes_for(:frequent_question) }

      it { expect { described_class.call(params) }.to change(FrequentQuestion, :count).by(1) }
      it { expect { described_class.call({}) }.to raise_error(ActiveRecord::RecordInvalid) }
    end
  end
end
