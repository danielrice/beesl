Factory.define :page do |t|
	t.association :section # belongs to a section
	t.name { |x| "#{x.section.name}_Page#{Factory.next(:count)}" }
end

Factory.define :panel do |t|
  t.association :page
  t.title { |x| "#{x.page.name}_Panel#{Factory.next(:count)}" }
  t.content { Forgery::LoremIpsum.paragraphs(5) }
end

# Sequences
Factory.sequence :count do |n|
	n
end

