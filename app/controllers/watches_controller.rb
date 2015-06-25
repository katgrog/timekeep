class WatchesController < ApplicationController
  def index
  	# Pass an instance variable to the view 
  	@watches = [
  		{name: "Backup Black", brand: "Swatch"}, 
  		{name: "Classic Digital Casio", brand: "Casio"}, 
  		{name:"1960s Vintage Raketa", brand: "Raketa"}, 
  		{name: "Max Bill Chronoscope", brand: "Junghans"}]
  	# Render the index view (Rails already doing this for us)
  end

  def show
  end

  def new
  end

  def edit
  end
end
