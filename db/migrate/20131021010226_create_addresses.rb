class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :first_name,               null: false
      t.string :last_name,                null: false
      t.string :address,                  null: false
      t.string :city,                     null: false
      t.string :state,                    null: false
      t.string :zip_code,                 null: false
      t.string :phone_number
      t.string :alternative_phone
      t.boolean :default,                 default: false
      t.timestamps
    end
  end
end
