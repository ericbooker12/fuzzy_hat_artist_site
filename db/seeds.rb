Item.delete_all
Collection.delete_all
Gallery.delete_all
User.delete_all

# ga = Gallery.new(name: "gall")
user = User.new(email: "be@bop.com", password: "123456")

mediums = ["Ceramics", "Photography"]

mediums.each do |medium|
	gallery = user.galleries.build(name: medium)
	gallery.save
end

3.times do |i|
	gallery = Gallery.first
	collection = gallery.collections.build(name: "Collection#{i+1}", thumbnail: 1)
	collection.save

	10.times do |j|
		item = collection.items.build(title: "Title#{j+1}")
		item.save
	end
	collection.thumbnail = collection.items.first.id
	collection.save
end

gallery = user.galleries.build(name: "Glass")
gallery.save

collection = gallery.collections.build(name: "Primordial Soup", thumbnail: 1)
collection.save

images = Dir.glob("#{Rails.root}/public/images/glass/*.jpg")
# images = Dir.glob(File.join(Rails.root, '/public/images/glass/*.jpg')

images.each do |photo_image|
	i = 1
	item = collection.items.build(title: "Title #{i}")
	item.image = File.new(photo_image)
	item.save
	i += 1
end

collection[:thumbnail] = collection.items.first.id
collection.save



# image: File.new("image/to/path.jpg")
# :photo => File.open(File.join(Rails.root, '/public/images/DSCF9692.jpg'))
