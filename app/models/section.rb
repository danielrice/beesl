class Section < ActiveRecord::Base
	has_many :pages, :dependent => :destroy
	validates_presence_of :name
	acts_as_list
end
