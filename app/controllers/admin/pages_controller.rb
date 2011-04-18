class Admin::PagesController < ApplicationController
	before_filter :require_user
	layout 'application2'

  def index
    @pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
    end
  end

  def show
    @page = Page.find(params[:id])
		respond_to do |format|
			format.js {
				render :update do |page|
					page.replace_html 'sidebar_area', :partial => 'admin/sections/sidebar', :locals => { :section => @page.section, :page => @page }
					page.replace_html 'show_page', :partial => 'show_page', :locals => { :page => @page }
				end
			}
		end
  end

  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end
  end
	
  def edit
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(params[:page])

    respond_to do |format|
      if @page.save
        format.html { redirect_to(admin_pages_path, :notice => 'Page was successfully created.') }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to(admin_pages_path, :notice => 'Page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to(admin_pages_path) }
      format.xml  { head :ok }
    end
  end
end
