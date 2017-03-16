Item.delete_all
Collection.delete_all
Gallery.delete_all

gallery1 = Gallery.create(name: "Glass")
gallery2 = Gallery.create(name: "Ceramic")
gallery3 = Gallery.create(name: "Photography")

5.times do |i|
	g = gallery1.collections.build(name: "Series#{i+1}", thumbnail: 1)
	g.save

	10.times do |j|
		item = g.items.build(title: "Title#{j+1}")
		item.save
	end

end

