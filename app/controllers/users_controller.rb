class UsersController < ApplicationController
  before_filter :require_user, :except => :index
  layout 'application2'
	
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
			flash[:notice] = "New user successfully created"
      redirect_to '/backside'
    else
      render :action => :new
    end
  end
  
  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      redirect_to admin_sections_path, :notice => "User successfully updated"
    else
      render :action => :edit
    end
  end
	
	def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to '/', :notice => "The user '#{user.login}' has been deleted."
	end
	
end