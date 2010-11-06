class Page < ActiveRecord::Base
	belongs_to :section
	has_many :panels
	
	validates_presence_of :section_id
end
