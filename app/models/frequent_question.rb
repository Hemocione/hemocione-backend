# frozen_string_literal: true

class FrequentQuestion < ApplicationRecord
  has_many :ratings, as: :rated

  validates :question, :answer, presence: true
end
