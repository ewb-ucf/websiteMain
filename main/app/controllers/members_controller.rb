class MembersController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@member = Member.new
  end

  def create
  	@member = Member.new(params[:user])

  	if @member.save
  		flash[:status] = TRUE
  		flash[:alert] = "Congradulations! You have successfully registered."
  	else
  		flash[:status] = FALSE
  		flash[:alert] = @member.errors.full_messages
  	end

  	redirect_to register_path
  end

end
