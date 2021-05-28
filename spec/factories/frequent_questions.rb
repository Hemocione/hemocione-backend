# frozen_string_literal: true

FactoryBot.define do
  factory :frequent_question do
    question { Faker::Quotes::Shakespeare.as_you_like_it_quote }
    answer { Faker::Quote.yoda }
  end
end
