# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def breadcrumb_content action,controller
		puts '-------------'
		if controller == 'sections'
			puts '#1'
			if action == 'index'
				return 'Home'
			elsif action == 'show'
				return Section.find(params[:id]).name
			else
				return ''
			end
		elsif controller == 'static'
			puts '#2'
			if action == 'general_controls'
				return 'General Controls'
			end
		elsif controller == 'admin/sections'
			puts '#3'
			if action == 'show'
				return Section.find(params[:id]).name
			elsif action == 'index'
				return 'Manage Sections'
			elsif action == 'new'
				return 'New Section'
			elsif action == 'edit'
				return 'Edit Section'
			end
		elsif controller == 'admin/pages'
			puts '#4'
			if action == 'show'
				return Page.find(params[:id]).name
			elsif action == 'index'
				return 'Manage Pages'
			elsif action == 'new'
				return 'New Page'
			elsif action == 'edit'
				return 'Edit Page'
			end
		elsif controller == 'admin/panels'
			puts '#5'
			if action == 'index'
				return 'Manage Panels'
			elsif action == 'new'
				return 'New Panel'
			elsif action == 'edit'
				return 'Edit Panel'
			end
		elsif controller == 'users'
			puts '#6'
			if action == 'index'
				return 'All Users'
			elsif action == 'new'
				return 'New User Signup'
			elsif action == 'edit'
				return 'My Account'
			end
		end
		''
	end
	
end
