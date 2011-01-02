class Panel < ActiveRecord::Base
	include Paperclip # ...

	belongs_to :page
	acts_as_list
	
	has_attached_file :image, :styles => { :medium => "300x300>",:thumb => "100x100>" }, :whiny => false
	
	validates_presence_of :page_id
	
	validates_attachment_content_type :image,
		:content_type=>['image/jpeg', 'image/jpg', 'image/png', 'image/bmp', 'image/gif'], 
		:message => 'can only be jpeg, jpg, png, bmp, or gif',
		:unless => Proc.new { |photo| photo[:image].nil? }

end