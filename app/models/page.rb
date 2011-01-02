class Page < ActiveRecord::Base
	belongs_to :section
	has_many :panels, :dependent => :destroy
	
	validates_presence_of :name
	validates_presence_of :section_id
	
	def ==(other_page)
		self.name == other_page.name
	end
end