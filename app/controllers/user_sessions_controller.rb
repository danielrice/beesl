# This controller handles the login/logout function of the site.
class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => :create
  before_filter :require_user, :only => :destroy
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      #flash[:notice] = "Login successful!"
      redirect_to '/backside'
    else
			flash[:error] = "Password/login combination incorrect."
      redirect_to '/'
    end
  end
  
  def destroy
    current_user_session.destroy
    #flash[:notice] = "Logout successful!"
    redirect_to '/'
  end
end
