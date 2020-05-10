require 'rails_helper'

RSpec.describe "Battles", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/battles/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/battles/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/battles/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/battles/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/battles/index"
      expect(response).to have_http_status(:success)
    end
  end

end
