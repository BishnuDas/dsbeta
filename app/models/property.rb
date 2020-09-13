class Property < ApplicationRecord
	belongs_to :user
	has_many :pictures, as: :imageable
	after_commit do
		puts "I am from after commit callbacks"
	end
	# has_attached_file :images, styles: { medium: "300x300", thumb: "100x100" }
  	# validates_attachment_content_type :images, content_type: /\Aimage\/.*\Z/
	
	def self.create_property(params)
		new_property = Property.new
		new_property.prop_type = params[:prop_type]
		new_property.area1 = params[:area1]
		new_property.area2 = params[:area2]
		new_property.address = params[:address]
		new_property.pincode = params[:pincode]
		new_property.description = params[:description]
		new_property.user_id = params[:user_id]
		new_property.save!
	end
end
