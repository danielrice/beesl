class PagesController < ApplicationController

  def show_page # called from link to remote in sections/show by sidebar element...REMOVE
    @page = Page.find(params[:id])
    render :partial => "show", :locals => { :page => @page }
  end
	
end