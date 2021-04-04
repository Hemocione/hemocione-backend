# frozen_string_literal: true

class Rating < ApplicationRecord
  enum rating: %i[negative positive]

  belongs_to :user
  belongs_to :rated, polymorphic: true
end
