require 'test_helper'

class PageTest < ActiveSupport::TestCase
  context "A page" do
		should belong_to(:section)
		should have_many(:panels).dependent(:destroy)
		should validate_presence_of :name
		should validate_presence_of :section_id
	end
end
