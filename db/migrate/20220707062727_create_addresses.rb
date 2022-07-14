class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false
      t.string :postal_code, null: false # 郵便番号
      t.string :prefecture, null: false # 都道府県
      t.string :city, null: false # 市区町村
      t.string :address1, null: false # 町域、番地等
      t.string :address2, null: false # 建物名、部屋番号等
      t.string :company_name, null: false, default: "" # 会社名(消す)
      t.string :division_name, null: false, default: "" # 部署名(消す)

      t.timestamps
    end

    add_foreign_key :addresses, :users
  end
end
