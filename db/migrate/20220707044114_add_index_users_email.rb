class AddIndexUsersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :users, "LOWER(email)", unique: true
    add_index :users, [ :family_name_kana, :given_name_kana ]
  end
end
