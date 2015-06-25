class Watch < ActiveRecord::Base
	def price
		price_in_pence.to_f / 100
	end 
end
