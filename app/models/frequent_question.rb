# frozen_string_literal: true

class FrequentQuestion < ApplicationRecord
  has_many :ratings, as: :rated
end
