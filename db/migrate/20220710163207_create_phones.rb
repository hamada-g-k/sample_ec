class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.references :user, null: false
      t.references :address
      t.string :number, null: false

      t.timestamps
    end

    add_foreign_key :phones, :users
    add_foreign_key :phones, :addresses
  end
end
