class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])

  	if @user.save
  		flash[:status] = TRUE
  		flash[:alert] = "Congradulations! You have successfully registered."
  	else
  		flash[:status] = FALSE
  		flash[:alert] = @user.errors.full_messages
  	end

  	redirect_to register_path
  end

end