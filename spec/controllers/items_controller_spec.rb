require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #show_new_item_form" do
    it "returns http success" do
      get :show_new_item_form
      expect(response).to have_http_status(:success)
    end
  end

end
