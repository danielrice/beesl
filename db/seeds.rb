# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Users - remember that password_confirmation is required!
User.create(:login=>"dakota",:password=>"northandsouth",:password_confirmation=>"northandsouth",:email=>"dmonopoly10@gmail.com")

# Sections
n = Section.create(:name => "News")
e = Section.create(:name => "Education", :has_sidebar => true)
r = Section.create(:name => "Research", :has_sidebar => true)

text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque bibendum interdum turpis sed volutpat. Morbi porttitor, enim sit amet porta dapibus, enim purus consectetur nunc, vel varius massa tortor quis sem. Maecenas sit amet felis at lectus blandit cursus. Duis leo dui, viverra nec porta ut, pellentesque ac leo. Donec pretium cursus volutpat. Aenean consequat metus varius erat venenatis molestie pharetra dolor pharetra. Proin condimentum enim scelerisque tortor aliquet imperdiet. Vestibulum ullamcorper luctus purus, et dictum nisl bibendum vitae. Vestibulum hendrerit sagittis purus, at accumsan purus consectetur et. Pellentesque vehicula, purus in porta dapibus, augue ipsum luctus elit, ut varius quam diam pharetra diam. Phasellus sapien orci, gravida nec dapibus in, porta id urna. Nam iaculis justo sit amet massa euismod egestas. Vestibulum tincidunt, metus non dapibus euismod, ipsum ligula luctus tellus, a sagittis urna tellus vel sapien."

# News pages
p1 = n.pages.create(:name=>'Page1')

p1.panels.create(:title => 'Page1Panel1', :content => text)
p1.panels.create(:title => 'Page1Panel2', :content => text)

# Education pages
p2 = e.pages.create(:name=>'Page2')
p3 = e.pages.create(:name=>'Page3')

p2.panels.create(:title => 'Page2Panel1', :content => text)
p2.panels.create(:title => 'Page2Panel2', :content => text)
p2.panels.create(:title => 'Page2Panel3', :content => text)
p3.panels.create(:title => 'Page3Panel1', :content => text)
p3.panels.create(:title => 'Page3Panel2', :content => text)

# Research pages
p4 = r.pages.create(:name=>'Page4')
p5 = r.pages.create(:name=>'Page5')
p6 = r.pages.create(:name=>'Page6')

p4.panels.create(:title => 'Page4Panel1', :content => text)
p4.panels.create(:title => 'Page4Panel2', :content => text)
p4.panels.create(:title => 'Page4Panel3', :content => text)
p5.panels.create(:title => 'Page5Panel1', :content => text)
p5.panels.create(:title => 'Page5Panel2', :content => text)
p6.panels.create(:title => 'Page6Panel1', :content => text)
p6.panels.create(:title => 'Page6Panel2', :content => text)

=begin
# News panels

n.panels.create(:title => 'Latest events', :content => text)
n.panels.create(:title => 'Archives', :content => text)

# Education panels
e.panels.create(:title => 'Energy and Indoor Environmental Systems Program', :content => text)
e.panels.create(:title => 'Undergraduate Study Program', :content => text)
e.panels.create(:title => 'Graduate Study Programs', :content => text)

# Research panels
r.panels.create(:title => 'Research Areas', :content => text)
r.panels.create(:title => 'Overview', :content => text)
=end