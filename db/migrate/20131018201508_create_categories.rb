class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string      :name,          null: false
      t.string      :permalink,     null: false
      t.boolean     :active
      t.datetime    :available_on
      t.datetime    :deleted_at
      t.timestamps
    end
  end
end
