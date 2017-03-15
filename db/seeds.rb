Group.delete_all
Gallery.delete_all

gallery1 = Gallery.create(name: "Glass")
gallery2 = Gallery.create(name: "Ceramic")
gallery3 = Gallery.create(name: "Photography")

5.times do |i|
	g = gallery1.groups.build(name: "Series#{i+1}", thumbnail: 1)
	g.save
end