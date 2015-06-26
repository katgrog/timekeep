module ApplicationHelper
	def payment_page?
		params[:controller] == "orders" and params[:action] == "new"
	end
end
