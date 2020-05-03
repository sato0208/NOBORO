require 'rails_helper'

RSpec.describe "Climbers::Trophys", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/climbers/trophys/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/climbers/trophys/create"
      expect(response).to have_http_status(:success)
    end
  end

end
