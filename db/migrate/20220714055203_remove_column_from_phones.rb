class RemoveColumnFromPhones < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :phones, :addresses
    remove_index :phones, :address_id
    remove_column :phones, :address_id
  end
end
