class Book < ActiveRecord::Base
	has_many :categories, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/4.jpg"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
