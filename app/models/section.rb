class Section < ActiveRecord::Base
	has_many :pages
	after_destroy do |section| section.pages.delete_all end
	acts_as_list
end
