class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string            :name,                null: false
      t.string            :permalink,           null: false, unique: true
      t.string            :sku,                 null: false
      t.decimal           :price,               precision: 8, scale: 2, default: 0.0,  null: false
      t.decimal           :cost,                precision: 8, scale: 2, default: 0.0,  null: false
      t.text              :description
      t.boolean           :is_customizable,     default: false
      t.string            :customization
      t.boolean           :active,              default: false
      t.boolean           :featured,            default: false
      t.datetime          :available_on
      t.datetime          :deleted_at
      t.timestamps
    end
    add_index :products, :name
    add_index :products, :permalink
  end
end
