require 'rails_helper'
# require 'spec_helper'

RSpec.describe ItemsController, type: :controller do
  it { should use_before_action(:set_item) }
  it { should use_before_action(:set_collection) }
  it { should use_before_action(:authenticate_user!) }

  it do
    user = create(:user)
    sign_in(user)

    sample_image = fixture_file_upload((Rails.root.join('spec', 'photos', 'test.png')))
    collection = create(:collection)

    params = {
      item: {
        title: "Artwork",
        image: sample_image,
        width: 6,
        length: 6,
        height: 8 },
        collection_id: collection.id
    }
    should permit(:title, :image, :width, :length, :height, :collection_id).
    for(:create, params: params).
      on(:item)
  end

  describe "GET #show_new_item_form" do
    it "returns http success"
    # do
    #   get :show_new_item_form
    #   expect(response).to have_http_status(:success)
    # end
  end

end
