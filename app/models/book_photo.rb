class BookPhoto < ActiveRecord::Base

	has_attached_file :photo, :styles => { :cover => "90x120>" },
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"
	belongs_to :book

end
