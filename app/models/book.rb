class Book < ActiveRecord::Base
	has_many :categories
	has_attached_file :image, :styles => { :medium => "500x500#", :thumb => "320x240#" }, :default_url => "/images/:style/missing.png"
   	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	def self.search(search)
		where("Title like ?", "%#{search}%")
	end
end
