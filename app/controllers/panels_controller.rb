class PanelsController < ApplicationController

	def show # not even used b/c of partial?
		@panel = Panel.find(params[:id])
		respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @panel }
    end
  end
	
end
