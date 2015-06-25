class WatchesController < ApplicationController
  def index
  	# Pass an instance variable to the view 
  	@watches = Watch.all 
  	# Render the index view (Rails already doing this for us)
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new 
  end

  def create
    @watch = Watch.new(watch_params)
    if @watch.save
      redirect_to @watch
    else
      render :new
    end
  end

  def edit
  end


  private
  def watch_params
    params.require(:watch).permit(:name, :description, :price_in_pence, :brand, :gender, :style, :pre_owned, :image)
  end
end
