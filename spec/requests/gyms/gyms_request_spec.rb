require 'rails_helper'

RSpec.describe "Gyms::Gyms", type: :request do

  describe "GET /edit" do
    it "returns http success" do
      get "/gyms/gyms/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/gyms/gyms/update"
      expect(response).to have_http_status(:success)
    end
  end

end
