class PagesController < ApplicationController

	def show
    @page = Page.find(params[:id])
		respond_to do |format|
			format.js {
				render :update do |page| # uses Prototype, the JS framework
					page.replace_html 'sidebar_area', :partial => 'sections/sidebar', :locals => { :section => @page.section, :page => @page }
					page.replace_html 'show_page', :partial => 'show_page', :locals => { :page => @page }
				end
			}
		end
  end
	
end

# Useful link describing replace_html:
# http://apidock.com/rails/ActionView/Helpers/PrototypeHelper/JavaScriptGenerator/GeneratorMethods/replace_html