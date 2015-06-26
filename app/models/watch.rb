class Watch < ActiveRecord::Base
	belongs_to :user
	has_many :orders

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/	

  	validates :name, presence: true
  	validates :description, presence: true, length: {minimum: 20}
  	validates :user, presence: true 


	def price
		price_in_pence.to_f / 100
	end 
end
