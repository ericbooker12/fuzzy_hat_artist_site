Item.delete_all
Collection.delete_all
Gallery.delete_all
User.delete_all

def create_artist(email, password)
	user = User.new(email: email, password: password)
	user.save
	user
end

def create_gallery(gallery_name, user)
	gallery = user.galleries.build(name: gallery_name)
	gallery.save
end

def create_collection(collection_name, gallery_name)
	gallery = Gallery.where(name: gallery_name).first
	collection = gallery.collections.build(name: collection_name, thumbnail: 1)
	collection.save
end

def add_items(collection_name, images_folder)
	collection = Collection.where(name: collection_name).first
	# images = Dir.glob("#{Rails.root}/public/images/glass/*.jpg")
	images = Dir.glob(File.join("#{Rails.root}", images_folder))

	i = 1
	images.each do |photo_image|
		item = collection.items.build(title: "Title #{i}")
		item.image = File.new(photo_image)
		item.save
		i += 1
	end
end

def assign_thumbnail(collection_name)
	collection = Collection.where(name: collection_name)
	collection[:thumbnail] = collection.items.first.id
	collection.save
end

user = create_artist('be@bop.com', '123456')

create_gallery('Glass', user)
create_gallery('Ceramic', user)
create_gallery('Photography', user)

create_collection('Primordial Roots', 'Glass')
create_collection('River Rocks', 'Glass')
create_collection('Borne from the Earth', 'Ceramic')
create_collection('Light & Shadow', 'Photography')
create_collection('Somthing else @@@@@@@@@@@@', 'Photography')

# http://docs.aws.amazon.com/AWSRubySDK/latest/AWS/S3/ObjectCollection.html
add_items('Primordial Roots', '/public/images/glass/*.jpg')
add_items('River Rocks', '/public/images/glass/*.jpg')
add_items('Borne from the Earth', '/public/images/glass/*.jpg')
add_items('Light & Shadow', '/public/images/glass/*.jpg')
add_items('Somthing else @@@@@@@@@@@@', '/public/images/glass/*.jpg')

assign_thumbnail('Primordial Roots')
assign_thumbnail('River Rocks')
assign_thumbnail('Borne from the Earth')
assign_thumbnail('Light & Shadow')
assign_thumbnail('Somthing else @@@@@@@@@@@@')
