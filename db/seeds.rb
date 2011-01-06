# -- Users --
User.create(:login=>"dakota",:password=>"northandsouth",:password_confirmation=>"northandsouth",:email=>"dmonopoly10@gmail.com")

# -- Sections --
edu = Section.find_or_create_by_name(:name => "Education", :has_sidebar => true)
res = Section.find_or_create_by_name(:name => "Research", :has_sidebar => true)
fac = Section.find_or_create_by_name(:name => "Faculty and members", :has_sidebar => true)
adv = Section.find_or_create_by_name(:name => "Advisory board")
fin = Section.find_or_create_by_name(:name => "Financial assistance", :has_sidebar => true)
pro = Section.find_or_create_by_name(:name => "Program sponsors")
ser = Section.find_or_create_by_name(:name => "Services", :has_sidebar => true)

text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque bibendum interdum turpis sed volutpat. Morbi porttitor, enim sit amet porta dapibus, enim purus consectetur nunc, vel varius massa tortor quis sem. Maecenas sit amet felis at lectus blandit cursus. Duis leo dui, viverra nec porta ut, pellentesque ac leo. Donec pretium cursus volutpat. Aenean consequat metus varius erat venenatis molestie pharetra dolor pharetra. Proin condimentum enim scelerisque tortor aliquet imperdiet. Vestibulum ullamcorper luctus purus, et dictum nisl bibendum vitae. Vestibulum hendrerit sagittis purus, at accumsan purus consectetur et. Pellentesque vehicula, purus in porta dapibus, augue ipsum luctus elit, ut varius quam diam pharetra diam. Phasellus sapien orci, gravida nec dapibus in, porta id urna. Nam iaculis justo sit amet massa euismod egestas. Vestibulum tincidunt, metus non dapibus euismod, ipsum ligula luctus tellus, a sagittis urna tellus vel sapien."
# -- Pages --
Page.delete_all
# edu pages


=begin
# Sections
n = Section.find_or_create_by_name(:name => "News")
e = Section.find_or_create_by_name(:name => "Education", :has_sidebar => true)
r = Section.find_or_create_by_name(:name => "Research", :has_sidebar => true)

text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque bibendum interdum turpis sed volutpat. Morbi porttitor, enim sit amet porta dapibus, enim purus consectetur nunc, vel varius massa tortor quis sem. Maecenas sit amet felis at lectus blandit cursus. Duis leo dui, viverra nec porta ut, pellentesque ac leo. Donec pretium cursus volutpat. Aenean consequat metus varius erat venenatis molestie pharetra dolor pharetra. Proin condimentum enim scelerisque tortor aliquet imperdiet. Vestibulum ullamcorper luctus purus, et dictum nisl bibendum vitae. Vestibulum hendrerit sagittis purus, at accumsan purus consectetur et. Pellentesque vehicula, purus in porta dapibus, augue ipsum luctus elit, ut varius quam diam pharetra diam. Phasellus sapien orci, gravida nec dapibus in, porta id urna. Nam iaculis justo sit amet massa euismod egestas. Vestibulum tincidunt, metus non dapibus euismod, ipsum ligula luctus tellus, a sagittis urna tellus vel sapien."

Panel.delete_all
Page.delete_all

# News pages
p1 = n.pages.create(:name=>'Page1')

# -- Panels
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
=end
