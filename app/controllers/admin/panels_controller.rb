class Admin::PanelsController < ApplicationController
  before_filter :require_user
	layout 'application2'
	
  def index # not used...
    @panels = Panel.all(:order=>"position")

    respond_to do |format|
      format.html
      format.xml  { render :xml => @panels }
    end
  end
	
  def new
    @panel = Panel.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @panel }
    end
  end

  def edit
    @panel = Panel.find(params[:id])
  end

  def create
    @panel = Panel.new(params[:panel])

    respond_to do |format|
      if @panel.save
        format.html { redirect_to(admin_panels_path, :notice => "Panel '#{@panel.title}' successfully created.") }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @panel.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @panel = Panel.find(params[:id])
		
    respond_to do |format|
      if @panel.update_attributes(params[:panel])
        format.html { redirect_to(admin_panels_path, :notice => "Panel '#{@panel.title}' was successfully updated.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @panel.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @panel = Panel.find(params[:id])
    @panel.destroy
		
    respond_to do |format|
      format.html { redirect_to(admin_panels_path, :notice => "Panel '#{@panel.title}' has been deleted.") }
      format.xml  { head :ok }
    end
  end
	
	def delete_image # only callable from edit view
		panel = Panel.find(params[:id])
		panel.image = nil
		panel.save
		redirect_to edit_admin_panel_path(panel)
	end
	
end
