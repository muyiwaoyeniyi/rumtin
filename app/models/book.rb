class Book < ActiveRecord::Base

	# Associations
	belongs_to :user
	has_many :book_photos, :dependent => :destroy
	accepts_nested_attributes_for :book_photos, :allow_destroy => true

	# Validation
  	validates_presence_of :title, :price, :location, :zipcode, :description
  	validates_numericality_of :price, :message => "has to be a number"



  	# Basic Search
	def self.search(search)
	  if search
	    where 'title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%"
	  else
	    all
	  end
	end

	def geolocate
		response = HTTParty.get('http://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&sensor=true')
		#puts response.body, response.code, response.message, response.headers.inspect
	end

end
