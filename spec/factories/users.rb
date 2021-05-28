# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    document_id { Faker::CPF.numeric }
    password { Faker::Alphanumeric.alphanumeric(number: 10) }
    confirmed_at { Time.current }
  end
end
