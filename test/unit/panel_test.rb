require 'test_helper'

class PanelTest < ActiveSupport::TestCase
  context "A panel" do
		should belong_to :page
		should validate_presence_of :page_id

		# the following need additional methods defined in test_helper
		should_act_as_list
		should_have_attached_file :image

		# What about this?
		#should_validate_attachment_content_type :image, 
		#	:valid => ['image/jpeg', 'image/jpg', 'image/png', 'image/bmp', 'image/gif']
	end
end
