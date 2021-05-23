class FixUserIndexes < ActiveRecord::Migration[6.0]
  def change
    remove_index :users, name: 'index_users_on_uid_and_provider'
  end
end
