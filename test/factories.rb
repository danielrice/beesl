Factory.define :page do |t|

	t.association :section # 'belongs to' a section
end

# Sequences
Factory.sequence :article_title do |n|
	"Article#{n}"
end