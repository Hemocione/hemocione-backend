# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :subscriptions
  has_many :users, through: :subscriptions
end
