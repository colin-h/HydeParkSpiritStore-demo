class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.integer :option_value_id
      t.integer :product_id
      t.timestamps
    end
  end
end
