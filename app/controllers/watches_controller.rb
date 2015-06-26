class WatchesController < ApplicationController
  before_action :find_watch, except: [:index, :new, :create]
  before_action :require_user, only: [:new, :create]
  
  def index
  	# Pass an instance variable to the view 
  	@watches = Watch.all 
  	# Render the index view (Rails already doing this for us)
  end

  def show
    find_watch
  end

  def new
    @watch = Watch.new 
  end

  def create
    @watch = Watch.new(watch_params)
    if @watch.save
      flash[:success] = "Successfully uploaded #{@watch.name} to the store."
      redirect_to @watch
    else
      flash[:error] = "Please check the form for errors and try again."
      render :new
    end
  end

  def edit
    require_owner(@watch)
  end

  def update
    require_owner(@watch)
    if @watch.update(watch_params)
      flash[:success] = "#{@watch.name} successfully updated."
    else
      flash[:error] = "Please check the form for errors and try again."
      render :edit 
    end
  end

  def destroy 
    require_owner(@watch)
    if @watch.destroy
      flash[:success] = "#{@watch.name} was removed."
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def watch_params
    params.require(:watch).permit(:name, :description, :price_in_pence, :brand, :gender, :style, :pre_owned, :image)
  end

  def find_watch
    @watch = Watch.find(params[:id])
  end
end
