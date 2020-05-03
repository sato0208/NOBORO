require 'rails_helper'

RSpec.describe "Gyms::Infos", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/gyms/infos/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/gyms/infos/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/gyms/infos/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
