class Book < ActiveRecord::Base
 

	belongs_to :user
	belongs_to :category
	has_many   :reviews


has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
validates_attachment_presence :image
end 