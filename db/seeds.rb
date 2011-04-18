# -- Users --
User.create(:login=>"dakota",:password=>"northandsouth",:password_confirmation=>"northandsouth",:email=>"dmonopoly10@gmail.com")

# # Creating the sections
%w[ Education Research Facilities Magic Temporary  ].each do |section_name|
	Section.find_or_create_by_name(section_name)
end
puts "---found or created sections"

# # Creating the pages (a page belongs to a section)

# Education
if Page.count == 0 # to prevent duplicate articles if rake db:seed is called > once; alternative to Article.delete_all, which causes id issues
=begin
	s = Section.find_by_name('Education')
	Factory.create(:page, :section => s, :name => 'Education Page')
=end

	Section.all.each { |s|
		5.times do Factory.create(:page, :section => s) end
	}
	puts "---created pages"

else
	puts "---no need to create pages"
end

# # Creating the panels (a panel belongs to a page)
if Panel.count == 0
=begin
	p = Page.find_by_name('Education Page')
	Factory.create(:panel, :page => p, :title => "Energy and Indoor Environmental Systems Program",
		:content => "The mission of the program is to graduate engineers who will be able to make immediate impacts and become leaders in energy and indoor environmental quality (IEQ) related industries such as:

Air conditioning and refrigeration equipment manufacturing
Building energy and environmental system analysis and design
Energy and indoor environmental quality consulting
Power generation and distribution
The Energy and Indoor Environmental Systems Program at Syracuse University is actively engaged in teaching, research and outreach. Its vision is to be a leading student-centered teaching and research program that facilitates high quality learning, and is highly responsive to the needs of relevant industries.")
=end
	Page.all.each { |p|
    5.times do Factory.create(:panel, :page => p) end
  }
  puts "---created panels"
else
  puts "---no need to create panels"
end

puts "---Done with seeds.rb!---"

