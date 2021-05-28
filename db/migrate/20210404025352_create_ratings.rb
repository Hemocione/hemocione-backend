# frozen_string_literal: true

class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |table|
      table.integer :rating
      table.belongs_to :user
      table.references :rated, polymorphic: true
      table.timestamps
    end
  end
end
