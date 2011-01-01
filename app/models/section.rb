class Section < ActiveRecord::Base
	has_many :pages, :dependent => :destroy
	acts_as_list
end
