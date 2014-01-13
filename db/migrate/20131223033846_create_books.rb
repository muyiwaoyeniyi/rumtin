class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price, :precision => 7, :scale => 2
      t.string :location
      t.string :zipcode
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
