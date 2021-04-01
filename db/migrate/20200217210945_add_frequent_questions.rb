class AddFrequentQuestions < ActiveRecord::Migration[6.0]
  def up
    create_table(:frequent_questions) do |t|
      t.text :question
      t.text :answer
      t.timestamps
    end
  end

  def down
    drop_table :frequent_questions
  end
end
