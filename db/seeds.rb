Item.delete_all
Collection.delete_all
Gallery.delete_all
User.delete_all

# ga = Gallery.new(name: "gall")
user = User.new(email: "be@bop.com", password: "123456")

mediums = ["Glass", "Ceramics", "Photography"]

mediums.each do |medium|
	gallery = user.galleries.build(name: medium)
	gallery.save
end

5.times do |i|
	gallery = Gallery.first
	collection = gallery.collections.build(name: "Collection#{i+1}", thumbnail: 1)
	collection.save

	10.times do |j|
		item = collection.items.build(title: "Title#{j+1}")
		item.save
	end

end
