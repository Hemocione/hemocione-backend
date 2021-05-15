# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FrequentQuestionsController, type: :controller do
  describe '#index' do
    let(:faqs) { FactoryBot.create_list :frequent_question, 3 }
    let(:expected_response) { JSON.parse(response.body).map { |faq| faq['id'] } }

    before { faqs }

    context 'with default pagination' do
      before { get :index }

      it { expect(response).to have_http_status :ok }
      it { expect(expected_response).to eq(faqs.map(&:id)) }
    end

    context 'with custom pagination' do
      before { get :index, params: { page: 1, per_page: 1 } }

      it { expect(response).to have_http_status :ok }
      it { expect(expected_response.size).to eq(1) }
      it { expect(expected_response.first).to eq(faqs.first.id) }
    end
  end

  describe '#show' do
    let(:faqs) { FactoryBot.create_list :frequent_question, 3 }
    let(:faq_id) { faqs.first.id }

    before { get :show, params: { id: faq_id } }

    it { expect(response).to have_http_status :ok }
    it { expect(JSON.parse(response.body)['id']).to eq(faq_id) }
  end

  describe '#create' do
    let(:user) { FactoryBot.create :user }
    let(:params) { { frequent_question: FactoryBot.attributes_for(:frequent_question) } }

    before do
      api_sign_in(user)
      post :create, params: params
    end

    it { expect(response).to have_http_status :created }
  end

  describe '#update' do
    let(:user) { FactoryBot.create :user }
    let(:faq) { FactoryBot.create :frequent_question }
    let(:params) { { id: faq.id, frequent_question: { question: 'abc?' } } }

    before do
      api_sign_in(user)
      put :update, params: params
    end

    it { expect(response).to have_http_status :ok }
    it { expect(JSON.parse(response.body)['question']).to eq('abc?') }
  end

  describe '#destroy' do
    let(:user) { FactoryBot.create :user }
    let(:faq) { FactoryBot.create :frequent_question }

    before do
      api_sign_in(user)
      delete :destroy, params: { id: faq.id }
    end

    it { expect(response).to have_http_status :no_content }
    it { expect { faq.reload }.to raise_error(ActiveRecord::RecordNotFound) }
  end
end
