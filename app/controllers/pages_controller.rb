class PagesController < ApplicationController

	def show
    @page = Page.find(params[:id])
		respond_to do |format|
			format.js {
				render :update do |page| # uses Prototype, the JS framework
					# updates breadcrumbs
					page.replace_html 'breadcrumb_page', :partial => 'layouts/breadcrumb_page', :locals => { :page_id => @page.id }
					
					# updates selected page in sidebar
					page.replace_html 'sidebar_area', :partial => 'sections/sidebar', :locals => { :section => @page.section, :page => @page }
					
					# updates 'show page' area
					page.replace_html 'show_page', :partial => 'show_page', :locals => { :page => @page }
				end
			}
		end
  end
	
end

# Useful link describing replace_html:
# http://apidock.com/rails/ActionView/Helpers/PrototypeHelper/JavaScriptGenerator/GeneratorMethods/replace_html