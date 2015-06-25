class UsersController < ApplicationController
  def show
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      # Prevent session hijacking 
      reset_session
      # Log the user in 
      session[:user_id] = @user.id
  	  redirect_to root_path
  	else
  		render :new
  	end
  end

  def edit
  end


  private
  def user_params
  	params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
  end
end


