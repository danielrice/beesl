class StaticController < ApplicationController
	before_filter :require_user
	layout 'application2'
	def general_controls
	end

end
