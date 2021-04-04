# frozen_string_literal: true

FactoryBot.define do
  factory :rating do
    user factory: :user

    trait :positive do
      rating { :positive }
    end

    trait :negative do
      rating { :negative }
    end

    trait :for_frequent_questions do
      rated factory: :frequent_question
    end
  end
end
