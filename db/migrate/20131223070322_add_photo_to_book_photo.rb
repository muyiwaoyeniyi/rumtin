class AddPhotoToBookPhoto < ActiveRecord::Migration
  def self.up
    add_attachment :book_photos, :photo
    add_reference :book_photos, :book, index: true
  end

  def self.down
    remove_attachment :book_photos, :photo
    remove_reference :book_photos, :book, index: true
  end
end
