require 'rails_helper'

RSpec.describe "Climbers::Gyms", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/climbers/gyms/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/climbers/gyms/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /search" do
    it "returns http success" do
      get "/climbers/gyms/search"
      expect(response).to have_http_status(:success)
    end
  end

end
