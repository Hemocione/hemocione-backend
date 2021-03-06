# frozen_string_literal: true

class AddDocumentAtUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :document_id, :string
    add_column :users, :document_type, :string

    add_index :users, :document_id, unique: true
    add_index :users, :document_type
  end
end
