require 'rails_helper'

RSpec.describe GameController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end


    it "initialize game" do
    	get :index
    	expect(assigns(:content)).not_to be nil
    end
  end

end
