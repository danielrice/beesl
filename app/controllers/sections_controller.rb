class SectionsController < ApplicationController
	# home page
  def index
		# modified to your pleasure
  end

  def show
    @section = Section.find(params[:id])
		@page = @section.pages[0]
  end
	
end