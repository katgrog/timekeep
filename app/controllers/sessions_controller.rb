class SessionsController < ApplicationController
  def new
  	# This can be blank 
  end

  def create
  	find_user 
  	if @user.present? and @user.authenticate(password)
  		# Log in here
  		log_in

  		redirect_home
  	else
  		re_render_form
  	end
  end

  def destroy 
  	# Log out	
  	reset_session 
  	flash[:success] = "See you again soon!"
  
  	redirect_to root_path
  end 

  private

  def find_user
    @user = User.find_by(email: email)
  end

  def log_in
  	reset_session
  	session[:user_id] = @user.id
  end

  def email
  	params[:session][:email]
  end

  def password
  	params[:session][:password]
  end

	def redirect_home
		flash[:success] = "Logged in!"
	  redirect_to root_path
	end  

	def re_render_form
		flash[:error] = "Oops, something went wrong. Please try again."
  	render :new
	end
end
