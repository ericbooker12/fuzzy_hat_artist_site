Given(/^a gallery$/) do
	@gallery = Gallery.create(name: "Glass", user_id: @user.id)
end

Given(/^a new gallery$/) do
	@new_gallery = Gallery.create(name: "FlameThrowingNinjas", user_id: @user.id)
end

Given(/^a collection$/) do
  @collection = Collection.create(name: "Collection99", thumbnail: 1, gallery_id: @gallery.id)
	@collection.items.build(title: 'A pretty vase', image_file_name: "image1.jpg")
	@collection.save
	@item = @collection.items.first
	@collection.thumbnail = @item.id
	@collection.save
end

Given(/^a collection of galleries$/) do
  @galleries = Gallery.active
end

Given(/^an artist$/) do
  @user = User.create(email: "be@bop.com", password: "123456")
end

Given(/^an item$/) do
	@item = @collection.items.first    #duplicate, line 8, delete
end
