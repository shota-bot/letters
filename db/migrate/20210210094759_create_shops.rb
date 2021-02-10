class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name,           null: false
      t.integer :prefecture_id, null: false

      t.timestamps
    end
  end
end
