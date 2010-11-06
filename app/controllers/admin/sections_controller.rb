class Admin::SectionsController < ApplicationController
  before_filter :require_user
	layout 'application2'
	# backside home page
  def index
    @sections = Section.all(:order => "position")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sections }
    end
  end
	
  # GET /sections/1
  # GET /sections/1.xml
  def show
    @section = Section.find(params[:id])
		@page = @section.pages[0]
  end

	def new
		@section = Section.new
		
		respond_to do |format|
      format.html
      format.xml  { render :xml => @panel }
    end
	end
	
  # POST /sections
  # POST /sections.xml
  def create
    @section = Section.new(params[:section])

    respond_to do |format|
      if @section.save
        format.html { redirect_to(admin_sections_path, :notice => 'Section was successfully created.') }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /sections/1/edit
  def edit
    @section = Section.find(params[:id])
  end
	
  # PUT /sections/1
  # PUT /sections/1.xml
  def update
    @section = Section.find(params[:id])

    respond_to do |format|
      if @section.update_attributes(params[:section])
        format.html { redirect_to(admin_sections_path, :notice => 'Section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.xml
  def destroy
    @section = Section.find(params[:id])
		temp = @section.name
    @section.destroy

    respond_to do |format|
      format.html { redirect_to admin_sections_path, :notice => "Section '#{temp}' was deleted." }
      format.xml  { head :ok }
    end
  end
	
	def sort
		params[:sections_index].each_with_index do |id, index|
			Section.update_all(['position=?', index+1], ['id=?', id])
		end
		render :nothing => true
	end
	
end
