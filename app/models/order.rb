class Order < ActiveRecord::Base
	belongs_to :watch
	belongs_to :user 
end
