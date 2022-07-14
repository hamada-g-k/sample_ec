class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email,             null: false
      t.string :family_name,       null: false
      t.string :given_name,        null: false
      t.string :family_name_kana,  null: false
      t.string :given_name_kana,   null: false
      t.string :gender,            null: false
      t.date   :birthday,          null: false
      t.string :password,          null: false

      t.timestamps
    end
  end
end
