class CreateBookPhotos < ActiveRecord::Migration
  def change
    create_table :book_photos do |t|

      t.timestamps
    end
  end
end
