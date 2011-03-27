# -- Users --
User.create(:login=>"dakota",:password=>"northandsouth",:password_confirmation=>"northandsouth",:email=>"dmonopoly10@gmail.com")

# Creating the sections
[ 'Education', 'Research', 'Faculty and Members', 'Advisory Board', 'Services' ].each do |section_name|
	Section.find_or_create_by_name(section_name)
end
puts "---found or created sections"

# Creating the pages (a page belongs to a section)
if Page.count == 0 # to prevent duplicate articles if rake db:seed is called > once; alternative to Article.delete_all, which causes id issues
	Section.all.each { |s|
		5.times do Factory.create(:page, :section => s) end
	}
	puts "---created pages"
else
	puts "---no need to create pages"
end

# Creating the panels (a panel belongs to a page)
if Panel.count == 0
  Page.all.each { |p|
    5.times do Factory.create(:panel, :page => p) end
  }
  puts "---created panels"
else
  puts "---no need to create panels"
end

puts "---Done with seeds.rb!---"

