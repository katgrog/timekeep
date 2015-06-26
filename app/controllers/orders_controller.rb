class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@order = Order.new
  end

  def create
  	@watch = Watch.find(params[:watch_id])
  	@order = @watch.orders.new(order_params)
  	@order.user = current_user

  end

  private
  def order_params
  	params.require(:order).permit(:stripe_token)
	end
end
