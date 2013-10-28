class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name,                   null: false
      t.string :abbreviation, limit: 5, null: false

      t.timestamps
    end
  end
end
