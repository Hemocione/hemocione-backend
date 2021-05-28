# frozen_string_literal: true

class AddFrequentQuestions < ActiveRecord::Migration[6.0]
  def up
    create_table(:frequent_questions) do |table|
      table.text :question
      table.text :answer
      table.timestamps
    end
  end

  def down
    drop_table :frequent_questions
  end
end
