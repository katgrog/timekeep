class WatchesController < ApplicationController
  def index
  	# Pass an instance variable to the view 
  	@watches = Watch.all 
  	# Render the index view (Rails already doing this for us)
  end

  def show
  end

  def new
  end

  def edit
  end
end