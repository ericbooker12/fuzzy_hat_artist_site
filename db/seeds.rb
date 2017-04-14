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
	# images = Dir.glob(File.join("#{Rails.root}", images_folder))

	s3 = Aws::S3::Resource.new
	bucket = s3.bucket('fh-artist-site')
	images = bucket.objects(prefix: images_folder).collect(&:key)
	images.shift

	i = 1
	images.each do |photo_image|
		item = collection.items.build(title: "Title #{i}")
		item.image = "https://s3-us-west-1.amazonaws.com/fh-artist-site/#{photo_image}"
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
create_collection('Perfume Bottles', 'Glass')
create_collection('Sculpture', 'Glass')
create_collection('Borne from the Earth', 'Ceramic')
create_collection('Bones', 'Photography')
create_collection('Wandering', 'Photography')
create_collection('Patina', 'Photography')


# http://docs.aws.amazon.com/AWSRubySDK/latest/AWS/S3/ObjectCollection.html
add_items('Primordial Roots', 'g-primordial')
add_items('River Rocks', 'g-riverrocks')
add_items('Perfume Bottles', 'g-perfumebottles')
add_items('Sculpture', 'g-sculpture')
add_items('Borne from the Earth', 'c-earth')
add_items('Bones', 'p-bones')
add_items('Wandering', 'p-wander')
add_items('Patina', 'p-patina')

assign_thumbnail('Primordial Roots')
assign_thumbnail('River Rocks')
assign_thumbnail('Perfume Bottles')
assign_thumbnail('Sculpture')
assign_thumbnail('Borne from the Earth')
assign_thumbnail('Bones')
assign_thumbnail('Wandering')
assign_thumbnail('Patina')
