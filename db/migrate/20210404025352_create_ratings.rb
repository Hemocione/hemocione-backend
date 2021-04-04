# frozen_string_literal: true

class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.belongs_to :user
      t.references :rated, polymorphic: true
      t.timestamps
    end
  end
end
